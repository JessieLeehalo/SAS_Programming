data one;
	input x @@;
	y=lag1(x);
	z=lag2(x);
	datalines;
1 2 3 4 5 6
;

proc print data=one;
	title 'LAG Output';
run;
