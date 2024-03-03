libname ad_data '/home/u63805938/sasuser.v94/Project';
proc import
datafile='/home/u63805938/sasuser.v94/Project/employees.csv'
	 out=ad_data.employees
	 dbms=csv
	 replace;
	 getnames=yes;
	 datarow=2;
run;

libname ad_data '/home/u63805938/sasuser.v94/Project';
proc import
datafile='/home/u63805938/sasuser.v94/Project/departments.csv'
	 out=ad_data.departments
	 dbms=csv
	 replace;
	 getnames=yes;
	 datarow=2;
run;

libname ad_data '/home/u63805938/sasuser.v94/Project';
proc import
datafile='/home/u63805938/sasuser.v94/Project/projects.csv'
	 out=ad_data.projects
	 dbms=csv
	 replace;
	 getnames=yes;
	 datarow=2;
run;