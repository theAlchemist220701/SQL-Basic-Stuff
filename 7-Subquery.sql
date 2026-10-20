-- Subqueries 
select*
from employee_demographics
where employee_id IN
	(select employee_id     #helps join / extract data from 3rd table without joining em 
		FROM employee_salary
        WHERE dept_id = 1

);


-- select* from employee_salary
select first_name , salary , (
select avg(salary) 
from employee_salary) as AVG
from employee_salary ; 



--  Remember the difference
--   Subquery: Can calculate one overall value and display it alongside every row.
--   GROUP BY: Divides rows into groups and calculates an aggregate separately for each group.

select gender , avg(age) , min(age) , max(age) , count(age)
from employee_demographics 
group by gender  ; 


























