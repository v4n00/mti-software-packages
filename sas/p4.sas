*topics covered: combining data sets with specific SAS and SQL procedures, creating data subsets;

libname ad_data '/home/u63805938/sasuser.v94/Project';
proc sql;
    CREATE TABLE ad_data.employees_projects AS
    SELECT e.*, p.*
    FROM ad_data.employees AS e
    LEFT JOIN ad_data.projects AS p
    ON e.AssignedProjectID = p.ProjectID;
quit;

libname ad_data '/home/u63805938/sasuser.v94/Project';
data
ad_data.Market_Analysis
ad_data.Internal_Audit
ad_data.Tax_Strategy
ad_data.Financial_Planning
ad_data.Operational_Improvement
ad_data.Technology_Implementation
ad_data.Data_Analytics;
	set ad_data.employees_projects;
	if title = 'Market Analysis' then output ad_data.Market_Analysis;
 	else if title = 'Internal Audit' then output ad_data.Internal_Audit;
	else if title = 'Tax Strategy' then output ad_data.Tax_Strategy;
	else if title = 'Financial Planning' then output ad_data.Financial_Planning;
	else if title = 'Operational Improvement' then output ad_data.Operational_Improvement;
	else if title = 'Technology Implementation' then output ad_data.Technology_Implementation;
	else if title = 'Data Analytics' then output ad_data.Data_Analytics;
run;