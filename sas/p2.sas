*topics covered: creating and using user-defined formats, using report procedures;

proc format;
	value salfmt
	low - <3500 = 'Small'
	3500 - <7000 = 'Medium'
	7000 - high = 'Big';
run;

proc freq data=ad_data.employees;
	tables salary /nocum nopercent;
	format salary salfmt.;
run;