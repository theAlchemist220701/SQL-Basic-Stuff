-- -----------------------Stored Procedures----------------------------------

delimiter $
create procedure large_salaries2()
begin 
		select * 
		from employee_salary
		where salary >= 50000; 
		select * 
		from employee_salary
		where salary >= 10000;
end $
delimiter ; 

        
call large_salaries2() ; 




select*from employee_salary  ; 

drop procedure if exists large_salaries4;
delimiter $
create procedure large_salaries4(input_id int)
begin 
		select first_name, last_name , salary
		from employee_salary 
        where input_id = employee_id;
end $
delimiter ; 

        
call large_salaries4(4) ; 















