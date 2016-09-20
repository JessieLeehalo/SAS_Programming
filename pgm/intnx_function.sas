data RIL_Date;
	infile datalines;
	input ril_date date7.;
	format ril_date yymmdd10.;

	datalines;
	01JAN16
	01FEB16
	01MAR16
	01APR16
	01MAY16
	;
run; 

proc sql;
	create table date as
	select ril_date format date9. from
	ril_date;
quit;

data intnx_dataset;
	set RIL_Date format date9.;
	ril_date = intnx('month', ril_date, 0, 'end');
run;
