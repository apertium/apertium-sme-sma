Evaluerenteavsttaid analyseren


A Kvantitatiivalaš analysa
1. WER ja PER (man ollu sii leat divvon)
WER = word error rate (maid sátneordnet)
PER = position-independent word error rate (ii sátneordnet)
2. Divvumiid klassifiseren
3. Divvumiid analysa
B. Kvalitatiivalaš analysa
1. Jearranskovit


Text files for evaluation are in 2-2016.

WER, PER:
=========

Texts are evaluated on the command line (WER, PER) and on Fran's web page.

Webpage
http://xixona.dlsi.ua.es/~fran/eval/


Commandline:
The command used for WER and PER is
perl $GTCORE/scripts/apertium-eval-translator.pl -r sma_mt.txt -t MTeval_MAJA.txt



Error classification:
=====================
The errors are listed in the list catalogue, created as follows:

cat MTeval_MAJA.txt |preprocess > list/MTeval_MAJA.list


New command for making list:
diff -y list/smj_mt.list list/smj_san.list|cat -n|grep '[><|]'|tr -s '\t'|see


OLD COMMAND:
diff list/sma_mt.list list/MTeval_MAJA.list |sed 's/^[1-9]/™/g;'|tr '\n' ' '|tr '™' '\n'|cut -d" " -f2- >> wer_analysis.csv

The resulting list is put in wer_analysis.ods for classifilation


Kriteriat
1 = lexical selection 
2 = difference in generation (different shape of wordform)
3 = difference in choice of inflection (different wordform selected)
4 = word order (word order changed, word deleted or added, e.g. copula added or removed)
5 = punctuation mark added or deleted.
6 = word added/removed because of lexical selection


Original files
==============

The original files are in
techdoc/mt/smesma/evalueren/
