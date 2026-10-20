# ------------------WHERE  LOGICAL OPERATORS  Like  -----------------------------

select * from employee_salary
where salary >= 50000 ;
#where first_name = 'Leslie'


select * 
from employee_demographics
where gender != "female" ; 


select * 
from employee_demographics
where birth_date > "1980-01-01" ; 




# ------------------ LOGICAL OPERATORS -----------------------------

# AND OR NOT

select * 
from employee_demographics
where birth_date > "1980-01-01" OR  NOT gender = "female"  ; 


#-----------Logical operators follow PEMDAS too 
select *
from employee_demographics 
where (first_name= "Ben" AND age = 38 ) OR  age > 50;

#------------LIKE STATEMENT 





select *
from employee_demographics 
where first_name like '%er%'; 


select *
from employee_demographics 
where first_name like '%a'; 


select *
from employee_demographics 
where first_name like 'a__%'; 
 
 
select *
from employee_demographics 
where birth_date like '198%'; 











































