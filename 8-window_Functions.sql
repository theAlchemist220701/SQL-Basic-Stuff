-- ------------- window Functions --------------
-- this is group by 
select gender , avg(salary) as avg_salary
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
group by gender;     







-- this is window function------------
 
select dem.first_name , dem.last_name , gender , 
-- window function 
avg(salary) over(partition by gender)as avg_sal
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
;     




 
select dem.first_name , dem.last_name , gender , sal.salary , 
-- window function 
sum(salary) over(partition by gender order by dem.employee_id)as Rolling_Total 
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
;     



-- Special Stuff with window functions --------


select dem.first_name ,dem.employee_id ,  dem.last_name , gender , sal.salary , 
row_number() over(partition by gender order by sal.salary desc  ) row_num,  -- never assignes a duplicate number 
rank() over(partition by gender order by sal.salary desc  ) rank_num ,
-- rank has repeated entried when it encounters a duplicate 
-- and it neer assigns next number numberically but positionally -- see of this please
 
dense_rank() over(partition by gender order by sal.salary desc  ) dense_rank_num 
-- dense ran unlike rank gave the next rank numberically and not positionally 
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
;  




