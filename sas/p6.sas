*topics covered: generating graphs;

proc format;
value $chrtfmt
'Operational Improvement' = 'Op. Imprv.'
'Technology Implementation' = 'Tech. Impl.'
'Data Analytics' = 'Data Anl.'
'Tax Strategy' = 'Tax Strat.'
'Internal Audit' = 'Int. Audit'
'Market Analysis' = 'Market Anl.'
'Financial Planning' = 'Fin. Plan.';
run;

libname ad_data '/home/u63805938/sasuser.v94/Project';
title 'Mean of employees salary by project';
proc gchart data=ad_data.employees_means;
format Title $chrtfmt.;
vbar Title / sumvar=Salary;
run;
quit;