grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"n"' | sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smen1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"a"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smea1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"adv"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeadv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"v"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smev1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"iv"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeiv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"tv"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smetv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"cc"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smecc1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"cs"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smecs1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"num"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smenum1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"indef"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeindef1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pers"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepers1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pcle"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepcle1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"po"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepo1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pr"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepr1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"interr"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeinterr1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"refl"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smerefl1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"dem"' |sed 's/<b\/>/ /' | tr "<" ">" | cut -d ">" -f7 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smedem1
cat $HOME/apertium/apertium-sme-sma/dev/smen1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "N+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smen2
cat $HOME/apertium/apertium-sme-sma/dev/smea1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "A+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smea2
cat $HOME/apertium/apertium-sme-sma/dev/smeadv1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+Adv" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeadv2
cat $HOME/apertium/apertium-sme-sma/dev/smeiv1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "IV+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeiv2
cat $HOME/apertium/apertium-sme-sma/dev/smetv1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "TV+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smetv2
cat $HOME/apertium/apertium-sme-sma/dev/smepcle1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+Pcle" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepcle2
cat $HOME/apertium/apertium-sme-sma/dev/smeindef1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+Indef" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeindef2
cat $HOME/apertium/apertium-sme-sma/dev/smenum1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "Num+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smenum2
cat $HOME/apertium/apertium-sme-sma/dev/smedem1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "Dem+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smedem2
cat $HOME/apertium/apertium-sme-sma/dev/smepers1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "Pers+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepers2
cat $HOME/apertium/apertium-sme-sma/dev/smecc1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+CC" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smecc2
cat $HOME/apertium/apertium-sme-sma/dev/smecs1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+CS" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smecs2
cat $HOME/apertium/apertium-sme-sma/dev/smeinterr1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "Interr+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smeinterr2
cat $HOME/apertium/apertium-sme-sma/dev/smepr1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+Pr" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepr2
cat $HOME/apertium/apertium-sme-sma/dev/smepo1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "+Po" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smepo2
cat $HOME/apertium/apertium-sme-sma/dev/smerefl1 | $HLOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.hfst | grep "Refl+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smerefl2
echo "MISSING nouns" > $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smen1 $HOME/apertium/apertium-sme-sma/dev/smen2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING IV verbs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smeiv1 $HOME/apertium/apertium-sme-sma/dev/smeiv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING TV verbs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smetv1 $HOME/apertium/apertium-sme-sma/dev/smetv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING adj" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smea1 $HOME/apertium/apertium-sme-sma/dev/smea2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING num" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smenum1 $HOME/apertium/apertium-sme-sma/dev/smenum2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING adv" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smeadv1 $HOME/apertium/apertium-sme-sma/dev/smeadv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING pers" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smepers1 $HOME/apertium/apertium-sme-sma/dev/smepers2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING refl" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smerefl1 $HOME/apertium/apertium-sme-sma/dev/smerefl2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING indef" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smeindef1 $HOME/apertium/apertium-sme-sma/dev/smeindef2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING cc" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smecc1 $HOME/apertium/apertium-sme-sma/dev/smecc2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING cs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smecs1 $HOME/apertium/apertium-sme-sma/dev/smecs2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING po" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smepo1 $HOME/apertium/apertium-sme-sma/dev/smepo2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING pr" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smepr1 $HOME/apertium/apertium-sme-sma/dev/smepr2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING pcle" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smepcle1 $HOME/apertium/apertium-sme-sma/dev/smepcle2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING interr" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smeinterr1 $HOME/apertium/apertium-sme-sma/dev/smeinterr2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
echo "MISSING dem" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smedem1 $HOME/apertium/apertium-sme-sma/dev/smedem2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
see $HOME/apertium/apertium-sme-sma/dev/lemmatest-sme.txt
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"n"' | sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/sman1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"a"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaa1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"adv"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaadv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"iv"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaiv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"tv"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smatv1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"cc"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smacc1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"cs"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smacs1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"num"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smanum1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"indef"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaindef1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"pers"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapers1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"pcle"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapcle1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"po"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapo1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"pr"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapr1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"interr"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smainterr1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"refl"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smarefl1
grep '<r>' $HOME/apertium/apertium-sme-sma/apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |  grep '"dem"' |  sed 's/<b\/>/ /' | cut -d "<" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smadem1
cat $HOME/apertium/apertium-sme-sma/dev/sman1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "N+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/sman2
cat $HOME/apertium/apertium-sme-sma/dev/smaa1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "A+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaa2
cat $HOME/apertium/apertium-sme-sma/dev/smaadv1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+Adv" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaadv2
cat $HOME/apertium/apertium-sme-sma/dev/smaiv1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "IV+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaiv2
cat $HOME/apertium/apertium-sme-sma/dev/smatv1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "TV+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smatv2
cat $HOME/apertium/apertium-sme-sma/dev/smapcle1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+Pcle" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapcle2
cat $HOME/apertium/apertium-sme-sma/dev/smaindef1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+Indef" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smaindef2
cat $HOME/apertium/apertium-sme-sma/dev/smanum1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Num+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smanum2
cat $HOME/apertium/apertium-sme-sma/dev/smadem1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Dem+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smadem2
cat $HOME/apertium/apertium-sme-sma/dev/smapers1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Pers+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapers2
cat $HOME/apertium/apertium-sme-sma/dev/smacc1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+CC" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smacc2
cat $HOME/apertium/apertium-sme-sma/dev/smacs1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+CS" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smacs2
cat $HOME/apertium/apertium-sme-sma/dev/smainterr1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Interr+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smainterr2
cat $HOME/apertium/apertium-sme-sma/dev/smapr1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+Pr" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapr2
cat $HOME/apertium/apertium-sme-sma/dev/smapo1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "+Po" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smapo2
cat $HOME/apertium/apertium-sme-sma/dev/smarefl1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Refl+" | cut -f2 | cut -d "+" -f1 | sort -u > $HOME/apertium/apertium-sme-sma/dev/smarefl2
echo "MISSING nouns" > $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/sman1 $HOME/apertium/apertium-sme-sma/dev/sman2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING IV verbs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smaiv1 $HOME/apertium/apertium-sme-sma/dev/smaiv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING TV verbs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smatv1 $HOME/apertium/apertium-sme-sma/dev/smatv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING adj" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smaa1 $HOME/apertium/apertium-sme-sma/dev/smaa2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING num" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smanum1 $HOME/apertium/apertium-sme-sma/dev/smanum2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING adv" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smaadv1 $HOME/apertium/apertium-sme-sma/dev/smaadv2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING pers" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smapers1 $HOME/apertium/apertium-sme-sma/dev/smapers2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING refl" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smarefl1 $HOME/apertium/apertium-sme-sma/dev/smarefl2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING indef" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smaindef1 $HOME/apertium/apertium-sme-sma/dev/smaindef2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING cc" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smacc1 $HOME/apertium/apertium-sme-sma/dev/smacc2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING cs" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smacs1 $HOME/apertium/apertium-sme-sma/dev/smacs2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING po" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smapo1 $HOME/apertium/apertium-sme-sma/dev/smapo2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING pr" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smapr1 $HOME/apertium/apertium-sme-sma/dev/smapr2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING pcle" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smapcle1 $HOME/apertium/apertium-sme-sma/dev/smapcle2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING interr" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smainterr1 $HOME/apertium/apertium-sme-sma/dev/smainterr2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
echo "MISSING dem" >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
comm -23 $HOME/apertium/apertium-sme-sma/dev/smadem1 $HOME/apertium/apertium-sme-sma/dev/smadem2 >> $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt
see $HOME/apertium/apertium-sme-sma/dev/lemmatest-sma.txt


