
#------------------------------------------------------GROUPBY------------------------------------------------

select gender , avg(age)
from employee_demographics
group by gender; 


## select occupation  , salary
## from employee_salary 
## group by occupation , salary  ; 

select gender , avg(age) , max(age) , min(age) , count(age) 
from employee_demographics 
group by gender ; 


#------------------------------------------------------ORDERBY------------------------------------------------
select *
from employee_demographics 
order by gender , age  desc ;   #ASC or DSC can be added 





#------------------------------------------------------HAVING - WHERE ------------------------------------------------
select gender , avg(age) 
from employee_demographics
group by gender 
having avg(age) > 40 ;
#`HAVING` filters groups after `GROUP BY` and aggregate calculations, such as `AVG()`, `COUNT()`, or `SUM()`.
# Unlike `WHERE`, which filters individual rows before grouping, `HAVING` filters groups based on aggregate conditions.


select occupation ,  first_name , avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation 
having avg(salary) > 50000; 


/*---------------------SQL ORDER - SQL is written in a different order from its logical processing order. The logical order is generally FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY. */



/*------------------------SQL LIMITS --------------------------------------------------------------*/ 
select * 
from employee_demographics
order by age desc
limit 2;


select gender, age as avg_age
from employee_demographics 
where age >30 
group by gender 
having avg(age)>35; 






















































