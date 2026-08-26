-- Advanced SQL question 
select * from Employees

-- find rank using rank() function
-- RANK() → Ties share the same rank, and the next rank is skipped.
select EmployeeName ,salary ,rank() over(order by salary desc) as rank from Employees 	;

--find rank using row_number() function
--ROW_NUMBER() → Every row is unique.
select EmployeeName, Salary, row_number() over(order by salary desc) as rank from Employees	;

-- find rank using dense_rank() function
-- DENSE_RANK() → Ties share the same rank, but no ranks are skipped.
select EmployeeName, Salary, DENSE_RANK() over(order by salary desc) as rank from Employees ;

