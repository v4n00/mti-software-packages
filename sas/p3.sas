*topics covered: iterative and conditional processing of data;

data ad_data.salary_final (drop=i);
	set ad_data.employees;
	salary_final = salary;
	do i = 1 to bonus;
		salary_final = salary_final + salary_final * 0.02;
end;
run;

proc print data=ad_data.salary_final noobs;
run;