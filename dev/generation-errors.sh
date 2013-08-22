#!/bin/bash

CORP=../texts/samediggidiedadus_samegiela_birra_2012.sme.txt
SED=gsed
TEMPDIREC=/tmp/
if [[ $TMPDIR != "" ]]; then
	TEMPDIREC=$TMPDIR;
fi
which $SED >/dev/null;
if [[ $? -eq 1 ]]; then
	SED="sed";
fi
if [[ $1 == "new" ]] ; then
	cat $CORP | $SED 's/$/./g' | apertium -d ../ sme-sma-postchunk | $SED 's/\$\W*\^/$\n^/g' | sort -f | uniq -c | sort -gr > $TEMPDIREC/sme-sma.postchunk
	cat $TEMPDIREC/sme-sma.postchunk | cut -f2 -d'^' | cut -f1 -d'<' | sed 's/\*//g' | $SED 's/$/./g' | apertium-destxt | hfst-proc -w ../sma-sme.automorf.hfst | apertium-retxt  > $TEMPDIREC/sma.generation
	cat $TEMPDIREC/sme-sma.postchunk | hfst-proc -d ../sme-sma.autogen.hfst  > $TEMPDIREC/sme-sma.generation
	cat $TEMPDIREC/sme-sma.generation | sed 's/^ *[0-9]\+ //g' > $TEMPDIREC/sme-sma.result
	paste $TEMPDIREC/sme-sma.postchunk $TEMPDIREC/sme-sma.result $TEMPDIREC/sma.generation | sed 's/^ *//g' | sed 's/^[0-9]\+/&\t/g' > generation-report.sme-sma.txt
else 
	cat generation-report.sme-sma.txt
fi
echo ""
HASH=`cat generation-report.sme-sma.txt | cut -f3 | grep '#' | wc -l`;
SLASH=`cat generation-report.sme-sma.txt | cut -f3 | grep '\/' | wc -l`;
AT=`cat generation-report.sme-sma.txt | cut -f3 | grep '@' | wc -l`;
STAR=`cat generation-report.sme-sma.txt | cut -f3 | grep '*' | wc -l`;

echo $HASH | sed 's/^/ # /g'
echo $SLASH | sed 's/^/ \/ /g'
echo $AT | sed 's/^/ @ /g'
echo $STAR | sed 's/^/ * /g'

if [[ $1 == "new" ]]; then 
	DATE=`date +"%Y-%m-%d %H:%M:%S"`;
	printf "$DATE\t$HASH\t$SLASH\t$AT\t$STAR\n" >> generation-history.log
fi
