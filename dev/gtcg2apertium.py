#!/usr/bin/python3
# -*- encoding: utf-8 -*-

import sys;

filepos = 0;
for line in sys.stdin.readlines(): #{

	if line.count('LIST') > 0 and line.count('=') > 0: #{
		row = line.split('=');
		left = row[0];
		right = row[1].lower().replace('/', '_');
		outline = left + '=' + right;
		sys.stdout.write(outline);
	elif filepos == 0: #{
		sys.stdout.write(line);
	#}

	if line.count('SECTION') > 0: #{
		filepos = 1;
		continue;
	#}

#	SELECT:r3550 (Dem Sg Nom @→N) IF (*1C (N Sg Nom) BARRIER NOT-ADJ);

	if filepos == 1: #{
		outline = '';

		par = 0;
		seen_if = False;	
		lowercasing = True;

		row = line.replace('(', '( ').replace(')', ' )').split(' ');
		for item in row: #{
			if item == 'IF': #{
				seen_if = True;
			#}
			if item == '(': #{
				par = par + 1;
			elif item == ')': #{
				par = par - 1;
			#}	
			if seen_if == False and par == 1 and item[0] != '@' : #{
				outline = outline + item.lower();
			elif seen_if == True and par == 2 and item[0] != '@': #{
				outline = outline + item.lower();
			else: 
				outline = outline + item;
			#}
			outline = outline + ' ';
		#}

		print(outline);
	#}
#}

