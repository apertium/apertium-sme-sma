#!/bin/bash

SED=gsed
which $SED >/dev/null;
if [[ $? -eq 1 ]]; then
	SED="sed";
fi

TMPSCRIPT=`mktemp tmp.XXXXXXXXXX`;
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

TMPFILTER=`mktemp tmp.f.XXXXXXXXXX`;
TMPREGEX=`mktemp tmp.r.XXXXXXXXXX`;
TMPOUT1=`mktemp tmp.o1.XXXXXXXXXX`;
TMPOUT2=`mktemp tmp.o2.XXXXXXXXXX`;
TMP0=`mktemp tmp.0.XXXXXXXXXX`;
TMP1=`mktemp tmp.1.XXXXXXXXXX`;
TMP2=`mktemp tmp.2.XXXXXXXXXX`;
TMP3=`mktemp tmp.3.XXXXXXXXXX`;
TMP4=`mktemp tmp.4.XXXXXXXXXX`;

echo "~[ \$[ %<cmp%> ] | 
\$[ %<rcmpnd%> ] | 
\$[ %<plgencmp%> ] | 
\$[ %+ ] | 
\$[ %<sgnomcmp%> ] | 
\$[ %<sgcmp%> ] | 
\$[ %<sggencmp%> ] |
\$[ %<attrcmp%> ] 
] ;" | hfst-regexp2fst -S -o $TMPFILTER
printf "$1" | python3.2 $TMPSCRIPT | $SED 's/^/"/g' | $SED 's/$/?*"/g';
echo ""
printf $1 | python3.2 $TMPSCRIPT | $SED 's/$/?*/g' |  hfst-regexp2fst -o $TMPREGEX
hfst-compose-intersect -1 .deps/sme.automorf.hfst -2 $TMPREGEX -o $TMPOUT1
hfst-compose-intersect -1 $TMPOUT1 -2 $TMPFILTER -o $TMPOUT2
hfst-fst2strings $TMPOUT2  | grep -v 'foc' | grep -v 'qst' > $TMP0 

cat $TMP0 | cut -f2 -d':' | $SED 's/^/^/g' | $SED 's/$/$/g' |\
 lt-proc -b sme-sma.autobil.bin | tee $TMP1 | apertium-transfer -b apertium-sme-sma.sme-sma.t1x sme-sma.t1x.bin | tee $TMP2 |\
 apertium-interchunk apertium-sme-sma.sme-sma.t2x sme-sma.t2x.bin |\
 apertium-interchunk apertium-sme-sma.sme-sma.t3x sme-sma.t3x.bin |\
 apertium-interchunk apertium-sme-sma.sme-sma.t4x sme-sma.t4x.bin |\
 apertium-postchunk apertium-sme-sma.sme-sma.t5x sme-sma.t5x.bin | tee $TMP3 | hfst-proc -d sme-sma.autogen.hfst > $TMP4

paste $TMP0 $TMP1 $TMP2 $TMP3 $TMP4


rm $TMPSCRIPT $TMPREGEX $TMPFILTER $TMPOUT1 $TMPOUT2 $TMP0 $TMP1 $TMP2 $TMP3 $TMP4
