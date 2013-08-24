#!/usr/bin/python3

import sys;

bidix = sys.argv[1];
lexcl = sys.argv[2];
lexcr = sys.argv[3];

tablel = {};
tabler = {};
pairs = {};

def read_lexc(lexc, debug=False): #{
	linecount = 0;
	table = {};
	for line in open(lexc).readlines(): #{
		linecount = linecount + 1;	
		line = line.replace('% ', '®').replace(';', ' ;');
		lemma = '';
	
		if line.count(';') < 1 or line[0] == '!' or len(line.strip()) == 0: #{
			continue;
		#}
	
		if line.count(':') > 0: #{
			lemma = line.split(':')[0];
		else: #{
			lemma = line.split(' ')[0];
		#}
	
		if lemma.count('+') > 0: #{
			# ovdaláigge+Time:ovdal#áigge adv ;
			lemma = lemma.split('+')[0];
		#}
	
		contlex = line.split(' ')[1].strip();
		lemma = lemma.replace('®', '% ').strip();

		if contlex.strip() == '' or lemma.strip() == '': #{
			continue;
		#}
	
		if lemma not in table: #{
			table[lemma] = [];
		#}
	
		if debug: #{
			print(linecount, lemma, contlex);
		#}
	
		table[lemma].append(contlex);
	#} 
	return table;
#}

tablel = read_lexc(lexcl);
tabler = read_lexc(lexcr);

sl_tl = {};
sl_tl_ex = {};

for line in open(bidix).readlines(): #{
	line = line.replace('<l>', '@').replace('</l>', '@').replace('<r>', '@').replace('</r>', '@');
	if line.count('@') != 4: #{
		continue;

	#}

	left = line.split('@')[1];
	right = line.split('@')[3];
	
	lemmal = left.split('<')[0];
	lemmar = right.split('<')[0];

	if lemmal in tablel and lemmar in tabler: #{
		for cl in tablel[lemmal]: #{
			if cl not in sl_tl: #{
				sl_tl[cl] = {};
			#}
			if cl not in sl_tl_ex: #{
				sl_tl_ex[cl] = {};
			#}
			for tcl in tabler[lemmar]: #{
				if tcl not in sl_tl[cl]: #{
					sl_tl[cl][tcl] = 0;
				#}
				if tcl not in sl_tl_ex[cl]: #{
					sl_tl_ex[cl][tcl] = [];
				#}
				sl_tl[cl][tcl] = sl_tl[cl][tcl] + 1;
				sl_tl_ex[cl][tcl].append((left, right));
			#}
		#}
	#}

#}

for i in sl_tl: #{
	for j in sl_tl[i]: #{
		print(sl_tl[i][j], '\t', i, '\t', j, '\t', sl_tl_ex[i][j][0]);
	#}
#}
