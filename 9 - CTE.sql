-- -----------------------------------CTEs ------------------------------_


-- common table extension 

with CTE_Example (Gender, AVG_SAL , MAX_SAL , MIN_SAL , COUNT_SAL )  -- this overrides the name given within the CTE AS 
AS 
(
select gender, avg(salary) avg_sal , max(salary) max_sal , min(salary) min_sal , count(salary) Count  
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)  

select *
from CTE_Example 

;



select avg(avg_sal)
from(
select gender, avg(salary) avg_sal , max(salary) max_sal , min(salary) min_sal , count(salary) Count  
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)

example_subquery ; 



-- cte implementations 

with CTE_Example 
as 
(
select employee_id, birth_date , gender  
from employee_demographics 
where birth_date > '1985-01-01' 
), 

CTE_Example2 
as 
(
select employee_id  , salary 
from employee_salary
where salary > 50000
)
-- the outer query can access only the columns that a CTE exposes through its SELECT statement.
-- so if in case I do this 
/*CTE_Example2 
as 
(
select  salary 
from employee_salary
where salary > 50000
)
*/
-- then there will be no op since employee_id is missing from the select statements 
select *
from CTE_Example 
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id

;
