

import sys, re ; 

first = False;
for line in sys.stdin.readlines(): #{
	if line.strip(' \t')[0] == '#' or 'LIST BOS' in line or 'LIST EOS' in line: #{
		sys.stdout.write(line);
		continue;
	#}
	if line.strip() == '': #{
		oper = '';
	#}
	row = line.split(' ');
	if 'SELECT' in row[0]: #{
		oper = 'SELECT';
		first = True;
	elif 'REMOVE' in row[0]: #{
		oper = 'REMOVE';
		first = True;
	elif 'LIST' in row[0]: #{
		oper = 'LIST';
		first = True;
	elif 'MAP' in row[0]: #{
		oper = 'MAP';
		first = True;
	elif 'IFF' in row[0]: #{
		oper = 'IFF';
		first = True;
	elif 'SUBSTITUTE' in row[0]: #{
		oper = 'SUBSTITUTE';
		first = True;
	elif 'SET' in row[0]: #{
		oper = 'SET';
		first = True;
	#}


	print('-', oper,first,'|||', line, file=sys.stderr);

	tokens = line.replace('(', ' ( ').replace(')',' ) ');
	tokens = re.sub('  *', ' ', tokens);
	tokens = tokens.split(' ');

	print(tokens, file=sys.stderr);

	outline = '';
	if oper == 'LIST': #{
		par = 0;
		ntoken = 0;
		for token in tokens: #{
			if token == '(': par = par + 1;
			if token == ')': par = par - 1;

			if par == 1: #{
				outline = outline + token.lower();			
			elif token == 'LIST' or ntoken == 1: #{
				outline = outline + token;
			elif '"' in token: #{
				outline = outline + token;
			elif '@' in token: #{
				outline = outline + token;
			else: #{
				outline = outline + token.lower();
			#}
			outline = outline + ' ';
			ntoken = ntoken + 1;
		#}
	elif oper == 'SET': #{
		par = 0;
		ntoken = 0;
		for token in tokens: #{
			if token == '(': par = par + 1;
			if token == ')': par = par - 1;

			if par == 1: #{
				outline = outline + token.lower();			
			elif token == 'LIST' or ntoken == 1: #{
				outline = outline + token;
			elif '"' in token: #{
				outline = outline + token;
			elif '@' in token: #{
				outline = outline + token;
			else: #{
				outline = outline + token;
			#}
			outline = outline + ' ';
			ntoken = ntoken + 1;
		#}
	elif oper == 'SELECT' or oper == 'REMOVE':
		#- SELECT True ||| SELECT ("albmi") (0 ("almmái")) ;
		# ['SELECT', '(', '"albmi"', ')', '(', '0', '(', '"almmái"', ')', ')', ';\n']
		# + SELECT True ||| SELECT:KillCom ( Pl Loc ) IF ( 0 ( sg com ) ) ;

		seen_par = False;
		par = 0;
		ntoken = 0;
		first_block = True;
		seen_position = False;
		total_par = 0;
		for token in tokens: #{
			if token == '(': total_par = total_par + 1;
		#}
		for token in tokens: #{
			if token == '(': 
				par = par + 1;
				seen_par = True;
			if token == ')': par = par - 1;
			if token == ')' or (not seen_par and ntoken == 2): first_block = False;


			if ntoken == 1: #{
				outline = outline + token;
			elif par == 1 and first_block and token[0] != '"' and token[0] != '@': #{
				outline = outline + token.lower();
			elif par > 1 and par == total_par and not first_block and token[0] != '"' and token[0] != '@': #{
				outline = outline + token.lower();
			else: #{
				outline = outline + token;
			#}
			outline = outline + ' ';
			ntoken = ntoken + 1;
		#}
	elif oper == 'SUBSTITUTE': #{
		outline = '#';
	elif oper == 'MAP': #{
		outline = '#';
	elif oper == 'IFF': #{
		outline = '#';
	#}


	outline = outline.strip(' ');
	outline = outline.replace('>', '→').replace('<', '←').replace('/', '_').replace('( ', '(').replace(' )',')');
	print('+', oper,first,'|||', outline, file=sys.stderr);
	if outline != '': #{
		sys.stdout.write(outline);
	else: #{
		sys.stdout.write(line);
	#}	
	if first == True and oper != '': #{
		first = False;
	#}
#}
