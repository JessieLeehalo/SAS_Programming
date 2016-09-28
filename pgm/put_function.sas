*** PUT(source, format);
data tansform_format;
	cc=90133;
	cchex=put(cc,hex4.);
run;

***The PUT function returns a numeric value as a character string;
***The INPUT function returns the value of the character string as a SAS date value using a SAS date informat;
data num_tranform;
	numdate=122951;
	chardate=put(numdate,z6.);
	sasdate=input(chardate,mmddyy6.);
run;
