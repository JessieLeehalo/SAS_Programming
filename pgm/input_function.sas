*** Convert character to numeric, use the INPUT function
    new_variable = input(original_variable, informat.);

data new;
	char_var = '12345678';
	numeric_var = input(char_var, 8.);
run;

***Keep the data set use the original variable name as a different type;
data new_original_variable;
	orig = '12345678';
	new = input(orig, 8.);
	drop orig;
	rename new=orig;
run;

*** Sting contains nondigits such as commas or dollar signs, need to usr the correct informat;
data commas_string;
	char_var = '12,000,000';
	numeric_var = input(char_var, comma10.);

	char_var1 = '$6,000,000';
	numeric_var1 = input(char_var1, dollar10.);
run;
