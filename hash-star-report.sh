#!/bin/bash

cat otpt_dir/*|grep '"tg-amt"'|cut -d">" -f2-|cut -d"<" -f1|tr ' ' '\n' > /tmp/hashstarall

all=`cat /tmp/hashstarall | wc -l`

cat /tmp/hashstarall|grep '^#'|sed 's/&gt;/>/g;'|sed 's/&lt;/</g;'|tr -d '.,"!:' > /tmp/hashall

hashall=`cat /tmp/hashall | wc -l`

hashunique=`cat /tmp/hashall|sort|uniq|wc -l`

cat /tmp/hashall|sort|uniq -c|sort -nr > dev/hash-report.freq 

#cat /tmp/hashstarall|grep '^\*'|cut -c2-|tr -d '[.,:;)(?!]'|grep -v xxx|lookup -q /Users/trond/main/langs/fin/src/analyser-gt-desc.xfst|grep '?'|cut -f1 > /tmp/starallnofinnish
cat /tmp/hashstarall|grep '^\*'|cut -c2-|tr -d '[.,:;)(?!]'|grep -v xxx|cut -f1 > /tmp/starall

starall=`cat /tmp/starall|wc -l `
#starallnofinnish=`cat /tmp/starallnofinnish|wc -l `

cat /tmp/starall|sort|uniq -c|sort -nr > dev/star-report.freq

# hashpercentage = `echo "$hashall $all" | awk '{printf "%.2f \n", $1/$2}'`
# starpercentage = `echo "$starall $all" | awk '{printf "%.2f \n", $1/$2}'`

#hashpercentage = `echo awk '{printf "%.2f \n", $hashall/$all}'`
#starpercentage = `echo awk '{printf "%.2f \n", $starall/$all}'`

hashpercentage=`echo 3k $hashall $all /p | dc`
starpercentage=`echo 3k $starall $all /p | dc`
#starpercentagenofinnish=`echo 3k $starallnofinnish $all /p | dc`

hashpercentageh=`echo 3k $hashpercentage 100 *p | dc`
starpercentageh=`echo 3k $starpercentage 100 *p | dc`
#starpercentagehnofinnish=`echo 3k $starpercentagenofinnish 100 *p | dc`

echo ""
echo "Dáppe leat otpt_dir-fiillaid star/hash-raporttat"
echo ""
echo "Korpusas leat:"
echo ""
echo "     $all sáni."
echo "     $starall amas sáni (*)"
echo "     $hashall hash-sáni (#)"
echo ""
echo "hash-proseanta lea $hashpercentageh %"
echo "star-proseanta (buot sánit) lea $starpercentageh % "
#if [ $(echo $starpercentagehnofinnish) != "0" ] ; then
#    echo "star-proseanta (suomagiel sániid haga) lea $starpercentagehnofinnish % "
#    fi
echo ""


