*topics covered: using statistical procedures;

libname ad_data '/home/u63805938/sasuser.v94/Project';
title 'Information for employees salaries';
proc univariate data=ad_data.employees;
var Salary;
id EmployeeID;
run;