*** Removes trailing blanks from a character string, and returns one blank ig the string is missing.;

data temp;
	infile datalines dsd;
	input Address : $20. City : $10. Zip : $5. ;
	datalines;
65 ELM DRIVE, CARY, 27513
11 SUN DRIVE, CARY, 27513
712 HARDWICK STREET, CHAPEL HILL, 27514
5372 WHITEBUD ROAD, RALEIGH, 27612
;
run;

*** Trim Funtion start;
data temp2;
	 set temp;
	 NewAddress= trim(address)||','||trim(city)||','||trim(zip);
run;


