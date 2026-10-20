#-----------STRING FUNCTIONS -----------------------

select length('skyfall') ; 

select first_name , length(first_name)
from employee_demographics ; 

#-----------------CASE-----------------
select upper('sky'); # upper case 
select lower('SKY'); # lower case 



#-------------TRIM ------------------
select trim('          sky     ') ; #remove spaces;

select ltrim('          sky     *') ; #remove spaces;
select rtrim('*          sky     ') ; #remove spaces;

#-------------------SUBSTRING-----------------------

select first_name , 
left(first_name, 4) ,
right(first_name, 4) 
from employee_demographics ; 


select first_name,birth_date, 
substring(birth_date,6,2 ) as Birth_Month, #substring(birth_date,6,2 ) as Birth_Month, # here 6 ->Start point and 2 -> points to cover from start point 
substring(first_name, 3 , 2)
from  employee_demographics ; 


select first_name, replace(first_name,'a','z') as replaced 
from employee_demographics;


select locate('x','Alaxander') ; 


select first_name, locate('An',first_name) as located 
from employee_demographics;



select first_name,last_name ,
concat(first_name,' ',last_name)  as full_name
from employee_demographics;




















