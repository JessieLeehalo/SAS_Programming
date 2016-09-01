*** Causes a variable that is created by an INPUT or assignment statement to retain its value from one iteration of the DATA step to the next.;
*** Valid in a DATA step;

*** Basic Usage;
data retire;
	input Amount @@;
	retain Year 1994 Total 0;
	year = year + 1;
	total = total + amount;
	cards;
500 1000 1500 2200 2700
;
run;

*** Input data has missing value;
data retire_missing_value;
	input Amount @@;
	retain Year 1994 Total 0;
	year = year + 1;
	total = total + amount;
	cards;
500 1000 . 2200 2700
;
run;

*** Fix missing value sum problem;
data retire_sum;
	input Amount @@;
	retain Year 1994 Total 0;
	year = year + 1;
	total = sum(total, amount);
	cards;
500 1000 . 2200 2700
;
run;

*** Do not update PDV value and initialize to zero;
data retire;
	input Amount @@;
	retain Year 1995;
	year + 1;
	Total + amount;
	cards;
500 1000 . 2200 2700
;
run;
