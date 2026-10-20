##-------------JOINTS---------------------------
select * from employee_demographics ; 
select * from employee_salary ; 


select * 
from employee_demographics
inner join employee_salary  # we can write join too that is understood as inner join 
	on employee_demographics.employee_id = employee_salary.employee_id ; 
    
   
   ##-------------JOINTS- with alias ---------------------------
   
select dem.employee_id , age , occupation  
from employee_demographics as dem 
inner join employee_salary as sal                                                 # we can write join too that is understood as inner join 
	on dem.employee_id = sal.employee_id ; 
 
 



   
   ##-------------Left Join  ---------------------------

select * 
from employee_demographics as dem 
left join employee_salary as sal                                                 
	on dem.employee_id = sal.employee_id ; 

#SQL

/*```
-- LEFT JOIN: Keeps all rows from the left table and matching rows from the right; unmatched right-side values become NULL.
-- RIGHT JOIN: Keeps all rows from the right table and matching rows from the left; can be rewritten as LEFT JOIN by swapping table order.
```
*/



   ##-------------Right  ---------------------------
select * 
from employee_demographics as dem 
right join employee_salary as sal                                                 
	on dem.employee_id = sal.employee_id ; 

##------------self join  ---------------------------



select * 
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id    = emp2.employee_id ;


select emp1.first_name , emp2.first_name 
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 2  = emp2.employee_id ;
 






#-------------MULTI JOIN-----------------------_



select *
from employee_demographics as dem 
left join employee_salary as sal                                                 
	on dem.employee_id = sal.employee_id 
inner join parks_departments as pd 
	on sal.dept_id = pd.department_id ; 



#refrence table 

select *
from parks_departments ; 













