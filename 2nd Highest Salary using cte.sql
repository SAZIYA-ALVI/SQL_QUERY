-- Advance Sql Question 
select * from Employees	 ;

-- 2nd highest salary 
select max(salary) as Highest_salary from employees where salary < (select max(salary) from employees) ;


-- 2nd highest salary using cte 
WITH Salary as (select max(salary) as HIghest_salary from employees) 
select max(salary) as second_highest_salary from Employees
where Salary< (
select highest_salary from Salary);

