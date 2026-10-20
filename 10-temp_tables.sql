-- --------------------TEMPORARY TABLES --------------------------_


create temporary table temp_table 
(
first_name varchar(50) , 
last_name varchar(50) ,
favourite_movie varchar(100)
);



insert into temp_table 
value('d', 'singh' , 'LOTR') ; 






create temporary table salary_50K
select*
from employee_salary 
where salary > 50000 ; 

select * from 
salary_50K ; 


