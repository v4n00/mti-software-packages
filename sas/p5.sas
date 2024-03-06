*topics covered: using SAS functions;

libname ad_data '/home/u63805938/sasuser.v94/Project';
proc means data=ad_data.employees_projects mean nonobs;
    class Title;
    var Salary;
    output out=ad_data.employees_means;
run;