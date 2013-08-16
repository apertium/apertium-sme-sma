grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"n"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smen1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"a"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smea1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"adv"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smeadv1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"v"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smev1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"cc"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smecc1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"cs"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smecs1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"num"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smenum1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"indef"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smeindef1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pers"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smepers1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pcle"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smepcle1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"po"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smepo1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"pr"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smepr1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"interr"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smeinterr1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"refl"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smerefl1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f1 | grep '"dem"' | tr "<" ">" | cut -d ">" -f7 | sort -u > smedem1
cat smen1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "N+" | cut -f2 | cut -d "+" -f1 | sort -u > smen2
cat smea1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "A+" | cut -f2 | cut -d "+" -f1 | sort -u > smea2
cat smeadv1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Adv+" | cut -f2 | cut -d "+" -f1 | sort -u > smeadv2
cat smev1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "V+" | cut -f2 | cut -d "+" -f1 | sort -u > smev2
cat smepcle1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Pcle+" | cut -f2 | cut -d "+" -f1 | sort -u > smepcle2
cat smeindef1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Indef+" | cut -f2 | cut -d "+" -f1 | sort -u > smeindef2
cat smenum1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Num+" | cut -f2 | cut -d "+" -f1 | sort -u > smenum2
cat smedem1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Dem+" | cut -f2 | cut -d "+" -f1 | sort -u > smedem2
cat smepers1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Pers+" | cut -f2 | cut -d "+" -f1 | sort -u > smepers2
cat smecc1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "CC+" | cut -f2 | cut -d "+" -f1 | sort -u > smecc2
cat smecs1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "CS+" | cut -f2 | cut -d "+" -f1 | sort -u > smecs2
cat smeinterr1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Interr+" | cut -f2 | cut -d "+" -f1 | sort -u > smeinterr2
cat smepr1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Pr+" | cut -f2 | cut -d "+" -f1 | sort -u > smepr2
cat smepo1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Po+" | cut -f2 | cut -d "+" -f1 | sort -u > smepo2
cat smerefl1 | $LOOKUP $GTHOME/gt/sme/bin/sme.fst | grep "Refl+" | cut -f2 | cut -d "+" -f1 | sort -u > smerefl2
echo "MISSING nouns" > lemmatest-sme.txt
comm -23 smen1 smen2 >> lemmatest-sme.txt
echo "MISSING verbs" >> lemmatest-sme.txt
comm -23 smev1 smev2 >> lemmatest-sme.txt
echo "MISSING adj" >> lemmatest-sme.txt
comm -23 smea1 smea2 >> lemmatest-sme.txt
echo "MISSING num" >> lemmatest-sme.txt
comm -23 smenum1 smenum2 >> lemmatest-sme.txt
echo "MISSING adv" >> lemmatest-sme.txt
comm -23 smeadv1 smeadv2 >> lemmatest-sme.txt
echo "MISSING pers" >> lemmatest-sme.txt
comm -23 smepers1 smepers2 >> lemmatest-sme.txt
echo "MISSING refl" >> lemmatest-sme.txt
comm -23 smerefl1 smerefl2 >> lemmatest-sme.txt
echo "MISSING indef" >> lemmatest-sme.txt
comm -23 smeindef1 smeindef2 >> lemmatest-sme.txt
echo "MISSING cc" >> lemmatest-sme.txt
comm -23 smecc1 smecc2 >> lemmatest-sme.txt
echo "MISSING cs" >> lemmatest-sme.txt
comm -23 smecs1 smecs2 >> lemmatest-sme.txt
echo "MISSING po" >> lemmatest-sme.txt
comm -23 smepo1 smepo2 >> lemmatest-sme.txt
echo "MISSING pr" >> lemmatest-sme.txt
comm -23 smepr1 smepr2 >> lemmatest-sme.txt
echo "MISSING pcle" >> lemmatest-sme.txt
comm -23 smepcle1 smepcle2 >> lemmatest-sme.txt
echo "MISSING interr" >> lemmatest-sme.txt
comm -23 smeinterr1 smeinterr2 >> lemmatest-sme.txt
echo "MISSING dem" >> lemmatest-sme.txt
comm -23 smedem1 smedem2 >> lemmatest-sme.txt
see lemmatest-sme.txt
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 |grep '"n"' | cut -d "<" -f1 | sort -u > sman1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"a"' |  cut -d "<" -f1 | sort -u > smaa1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"adv"' |  cut -d "<" -f1 | sort -u > smaadv1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"v"' |  cut -d "<" -f1 | sort -u > smav1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"cc"' |  cut -d "<" -f1 | sort -u > smacc1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"cs"' |  cut -d "<" -f1 | sort -u > smacs1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"num"' |  cut -d "<" -f1 | sort -u > smanum1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"indef"' |  cut -d "<" -f1 | sort -u > smaindef1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"pers"' |  cut -d "<" -f1 | sort -u > smapers1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"pcle"' |  cut -d "<" -f1 | sort -u > smapcle1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"po"' |  cut -d "<" -f1 | sort -u > smapo1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"pr"' |  cut -d "<" -f1 | sort -u > smapr1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"interr"' |  cut -d "<" -f1 | sort -u > smainterr1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"refl"' |  cut -d "<" -f1 | sort -u > smarefl1
grep '<r>' ../apertium-sme-sma.sme-sma.dix | sed 's/<r>/¢/' | cut -d "¢" -f2 | grep '"dem"' |  cut -d "<" -f1 | sort -u > smadem1
cat sman1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "N+" | cut -f2 | cut -d "+" -f1 | sort -u > sman2
cat smaa1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "A+" | cut -f2 | cut -d "+" -f1 | sort -u > smaa2
cat smaadv1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Adv+" | cut -f2 | cut -d "+" -f1 | sort -u > smaadv2
cat smav1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "V+" | cut -f2 | cut -d "+" -f1 | sort -u > smav2
cat smapcle1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Pcle+" | cut -f2 | cut -d "+" -f1 | sort -u > smapcle2
cat smaindef1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Indef+" | cut -f2 | cut -d "+" -f1 | sort -u > smaindef2
cat smanum1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Num+" | cut -f2 | cut -d "+" -f1 | sort -u > smanum2
cat smadem1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Dem+" | cut -f2 | cut -d "+" -f1 | sort -u > smadem2
cat smapers1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Pers+" | cut -f2 | cut -d "+" -f1 | sort -u > smapers2
cat smacc1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "CC+" | cut -f2 | cut -d "+" -f1 | sort -u > smacc2
cat smacs1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "CS+" | cut -f2 | cut -d "+" -f1 | sort -u > smacs2
cat smainterr1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Interr+" | cut -f2 | cut -d "+" -f1 | sort -u > smainterr2
cat smapr1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Pr+" | cut -f2 | cut -d "+" -f1 | sort -u > smapr2
cat smapo1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Po+" | cut -f2 | cut -d "+" -f1 | sort -u > smapo2
cat smarefl1 | $HLOOKUP $GTHOME/langs/sma/src/analyser-gt-norm.hfst | grep "Refl+" | cut -f2 | cut -d "+" -f1 | sort -u > smarefl2
echo "MISSING nouns" > lemmatest-sma.txt
comm -23 sman1 sman2 >> lemmatest-sma.txt
echo "MISSING verbs" >> lemmatest-sma.txt
comm -23 smav1 smav2 >> lemmatest-sma.txt
echo "MISSING adj" >> lemmatest-sma.txt
comm -23 smaa1 smaa2 >> lemmatest-sma.txt
echo "MISSING num" >> lemmatest-sma.txt
comm -23 smanum1 smanum2 >> lemmatest-sma.txt
echo "MISSING adv" >> lemmatest-sma.txt
comm -23 smaadv1 smaadv2 >> lemmatest-sma.txt
echo "MISSING pers" >> lemmatest-sma.txt
comm -23 smapers1 smapers2 >> lemmatest-sma.txt
echo "MISSING refl" >> lemmatest-sma.txt
comm -23 smarefl1 smarefl2 >> lemmatest-sma.txt
echo "MISSING indef" >> lemmatest-sma.txt
comm -23 smaindef1 smaindef2 >> lemmatest-sma.txt
echo "MISSING cc" >> lemmatest-sma.txt
comm -23 smacc1 smacc2 >> lemmatest-sma.txt
echo "MISSING cs" >> lemmatest-sma.txt
comm -23 smacs1 smacs2 >> lemmatest-sma.txt
echo "MISSING po" >> lemmatest-sma.txt
comm -23 smapo1 smapo2 >> lemmatest-sma.txt
echo "MISSING pr" >> lemmatest-sma.txt
comm -23 smapr1 smapr2 >> lemmatest-sma.txt
echo "MISSING pcle" >> lemmatest-sma.txt
comm -23 smapcle1 smapcle2 >> lemmatest-sma.txt
echo "MISSING interr" >> lemmatest-sma.txt
comm -23 smainterr1 smainterr2 >> lemmatest-sma.txt
echo "MISSING dem" >> lemmatest-sma.txt
comm -23 smadem1 smadem2 >> lemmatest-sma.txt
see lemmatest-sma.txt


