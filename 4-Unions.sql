#----UNIONS----


##Allows to conbine rows 

select first_name , last_name
from employee_demographics
 union ## By default union is union distinct 
 select first_name , last_name
from employee_salary
 ;
#union all 
select first_name , last_name
from employee_demographics
 union all 
 select first_name , last_name
from employee_salary
 ; 
 
 
select 
first_name , last_name , 'OLD- man  ' as label 
from employee_demographics
where age > 40 and gender =  'male'
union 
select 
first_name , last_name ,'Highly paid employee ' as label 
from employee_salary 
where salary > 70000
union
select 
first_name , last_name , 'OLD-lady ' as label 
from employee_demographics
where age > 40 and gender = 'female'
order by first_name , last_name
 ; 







