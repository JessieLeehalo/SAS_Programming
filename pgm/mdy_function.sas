data mdy_function;
	format birthday date9.;
	
	birthday = mdy(02, 07, 1993);
	put birthday;
	put birthday yymmdd10.;
	
run;
