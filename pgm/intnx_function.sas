data Char_Date;
	length chardate $10;
	infile datalines;
	input chardate $;
	date = input(chardate, yymmdd10.);
return;

	datalines;
	2011-01-01
	1960-01-01
	1984-11-29
	2013-03-29
	2016-09-23
	;
run; 

proc sql;
	create table date as
	select date format date9. from
	char_date;
quit;

*** Get the last day of the month;
data intnx_end;
	set date;
	date = intnx('month', date, 0, 'end');
run;

***Get the first day of the month;
data intnx_beginning;
	set date;
	date = intnx('month', date, 0, 'beginning');
run;

***Get the middle day of the month;
data intnx_middle;
	set date;
	date = intnx('month', date, 0, 'middle');
run;

***Increase the internals;
data intnx_gap;
	set date;
	date = intnx('month', date, 5, 'end');
run;

***Return the same day;
data intnx_sameday;
	set date;
	date = intnx('year', date, 5, 'sameday');
run;
 
