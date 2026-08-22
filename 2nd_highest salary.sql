-- Advance sql question 
select * from Employees

-- find second highest salary using rank()
select EmployeeName, salary , rank() over(order by Salary desc) as Second_highest_Rank from employees;

-- find second highest salary using row_number()
select EmployeeName, salary , row_number() over(order by Salary desc) as Second_highest_Rank from employees;

-- find second highest salary using dese_rank()
--If two employees have the same salary, they should get the same rank.
-- dense rank is a best approch to find 2nd highest salary 
select EmployeeName, salary , rank() over(order by Salary desc) as Second_highest_Rank from employees
