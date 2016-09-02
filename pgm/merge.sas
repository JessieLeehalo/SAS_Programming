data mm1;
	input num vara $ @@;
	cards;
	1 A1 2 A2 2 A3 3 A4
	;

data mm2;
	input num varb $ @@;
	cards;
	1 B1 2 B2 2 B3 2 B4 3 B5
	;

data mmerge;
	merge mm1 mm2;
	by num;
run;

data m1;
	input vara $ varb $ @@;
	cards;
	A1 A1 A2 . A3 A3 A4 A4
	;
data m2;
	input varb $ varc $ @@;
	cards;
	B1 C1 B2 C2 . C3
	;

data nmerge;
	merge m1 m2;
run;
