#!/bin/bash

if [[ $# -lt 2 ]]; then
	echo "Not enough arguments to generation-test.sh -r";
	echo "bash generation-test.sh -r <corpus>";
	exit;
fi

if [[ $1 == "-r" ]]; then
	if [[ $# -lt 2 ]]; then 
		echo $#;
		echo "Not enough arguments to generation-test.sh -r";
		echo "bash generation-test.sh -r <corpus>";
		exit;
	fi
	args=("$@")
	echo "Corpus in: "`dirname $2`;
	echo -n "Processing corpus for generation test... ";
	rm -f /tmp/sme-sma.corpus.txt
	for i in `seq 1 $#`; do 
		if [[ ${args[$i]} != "" && -f ${args[$i]} ]]; then 
			cat ${args[$i]} >> /tmp/sme-sma.corpus.txt
		fi
	done
	echo "done.";
	echo -n "Translating corpus for generation test (this could take some time)... ";
	cat /tmp/sme-sma.corpus.txt | apertium -d ../ sme-sma-postchunk | sed 's/\$\W*\^/$\n^/g' > /tmp/sme.gentest.postchunk
	echo "done.";
fi

if [[ ! -f /tmp/sme.gentest.postchunk ]]; then
	echo "Something went wrong in processing the corpus, you have no output file.";
	echo "Try running:"
	echo "   sh generation-test.sh -r <corpus>";
	exit;
fi

cat /tmp/sme.gentest.postchunk  | sed 's/^ //g' | grep -v -e '@' -e '*' -e '[0-9]<Num>' -e '#}' -e '#{' | sed 's/\$>/$/g' | sort -f | uniq -c | sort -gr > /tmp/sme.gentest.stripped
cat /tmp/sme.gentest.stripped | hfst-proc -g ../sme-sma.autogen.hfst > /tmp/sme.gentest.surface
cat /tmp/sme.gentest.stripped | sed 's/^ *[0-9]* \^/^/g' > /tmp/sme.gentest.nofreq
paste /tmp/sme.gentest.surface /tmp/sme.gentest.nofreq | grep -e '\/' -e '#'  > /tmp/sme.generation.errors.txt
cat /tmp/sme.generation.errors.txt  | grep -v '#' | grep '\/' > /tmp/sme-sma.multiform
cat /tmp/sme.generation.errors.txt  | grep '#.*\/' > /tmp/sme-sma.multibidix 
cat /tmp/sme.generation.errors.txt  | grep '#' | grep -v '\/' > /tmp/sme-sma.tagmismatch 

echo "";
echo "===============================================================================";
echo "Multiple surface forms for a single lexical form";
echo "===============================================================================";
cat /tmp/sme-sma.multiform

echo "";
echo "===============================================================================";
echo "Multiple bidix entries for a single source language lexical form";
echo "===============================================================================";
cat /tmp/sme-sma.multibidix

echo "";
echo "===============================================================================";
echo "Tag mismatch between transfer and generation";
echo "===============================================================================";
cat /tmp/sme-sma.tagmismatch

echo "";
echo "===============================================================================";
echo "Summary";
echo "===============================================================================";
wc -l /tmp/sme-sma.multiform /tmp/sme-sma.multibidix /tmp/sme-sma.tagmismatch
