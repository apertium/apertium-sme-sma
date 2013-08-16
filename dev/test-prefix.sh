#!/bin/bash

SED=gsed
which $SED >/dev/null;
if [[ $? -eq 1 ]]; then
	SED="sed";
fi

TMPSCRIPT=`mktemp`;
echo "import sys;
tag = False;
c = sys.stdin.read(1);
while c != '':
        if c == '<':
                sys.stdout.write('%<');
                tag = True;
                c = sys.stdin.read(1);
        if c == '>':
                sys.stdout.write('%> ');
                tag = False;
                c = sys.stdin.read(1);
                continue;
        if tag:             
                sys.stdout.write(c);
        else:
                sys.stdout.write(c + ' ');
        c = sys.stdin.read(1);
        if c == '\n':
                break;
" > $TMPSCRIPT;

TMPREGEX=`mktemp`;
TMPOUT=`mktemp`;
TMP0=`mktemp`;
TMP1=`mktemp`;
TMP2=`mktemp`;
TMP3=`mktemp`;
TMP4=`mktemp`;

printf "$1" | python3 $TMPSCRIPT | $SED 's/^/"/g' | $SED 's/$/?*"/g';
echo ""
printf $1 | python3 $TMPSCRIPT | $SED 's/$/?*/g' |  hfst-regexp2fst -o $TMPREGEX
hfst-compose-intersect -1 .deps/sme.automorf.hfst -2 $TMPREGEX -o $TMPOUT
hfst-fst2strings $TMPOUT  | grep -v 'foc' | grep -v 'qst' > $TMP0 

cat $TMP0 | cut -f2 -d':' | $SED 's/^/^/g' | $SED 's/$/$/g' |\
 lt-proc -b sme-sma.autobil.bin | tee $TMP1 | apertium-transfer -b apertium-sme-sma.sme-sma.t1x sme-sma.t1x.bin | tee $TMP2 |\
 apertium-interchunk apertium-sme-sma.sme-sma.t2x sme-sma.t2x.bin |\
 apertium-interchunk apertium-sme-sma.sme-sma.t3x sme-sma.t3x.bin |\
 apertium-interchunk apertium-sme-sma.sme-sma.t4x sme-sma.t4x.bin |\
 apertium-postchunk apertium-sme-sma.sme-sma.t5x sme-sma.t5x.bin | tee $TMP3 | hfst-proc -d sme-sma.autogen.hfst > $TMP4

paste $TMP0 $TMP1 $TMP2 $TMP3 $TMP4

rm $TMPREGEX $TMPOUT $TMP0 $TMP1 $TMP2 $TMP3 $TMP4
