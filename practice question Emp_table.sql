

select * from employee_data
select max(salary) as [MAX_SALARY] from employee_data
select min(salary) as [MIN_SALARY] from employee_data
select* from employee_data WHERE SALARY >65000
select * from employee_data where salary < 65000
select * from employee_data where dept = 'it'
select * from employee_data where dept like 'hr'
select max(salary) as [Max_Salary] from employee_data where dept = 'it'
select distinct salary from employee_data 
order by salary desc

--Find the second highest salary.
select max(salary) as [2nd highest salary] from employee_data  where salary  < 
(select max(salary) from employee_data)	;

--Find the second lowest salary.
select min(salary) as [2nd lowest salary] from employee_data  where salary  >
(select min(salary) from employee_data)	;

--Find the third highest salary.

select max(salary) as [3rd highest salary] from employee_data  where salary  < 
(select max(salary) from employee_data where salary < (select max(salary) from employee_data)
);
select salary from (select salary, dense_rank() over(order by salary desc) as rank from employee_data) t where rank = 3;
  


--Find employees earning more than the average salary.
SELECT avg(salary) from employee_data
select* from employee_data where salary > 62200

--or
select *  from employee_data where salary > (select avg(salary) from employee_data);

--Find department-wise average salary.
select avg(salary) from employee_data where dept = 'it'
select avg(salary) from employee_data where dept = 'hr'
select avg(salary) from employee_data where dept = 'sales'
select avg(salary) from employee_data where dept = 'finance'

select dept, avg(Salary) as [Avg salary] from employee_data group by dept;

  --Find the highest-paid employee in each department.
 select dept, max(salary) as [Highest paid] from employee_data group by dept;


--Find duplicate salaries.
select salary,count(*) as Duplicates_salary from employee_data
group by salary
having count(*) > 1;

--Rank employees by salary.
select * from employee_data
order by salary desc;
--using rank
select  emp_name , salary, rank() over(order by salary desc) as [rank] from employee_data;
--or
select  emp_name , salary, dense_rank() over(order by salary desc) as [rank] from employee_data;
--or
SELECT emp_name,salary,ROW_NUMBER() OVER (ORDER BY salary DESC) AS [Row_num] FROM employee_data;


--Find the previous employee's salary using LAG().
select emp_name, salary , lag(salary) over(order by emp_id) as [Previous salary] from employee_data

--Calculate a running total of salaries
select emp_name,salary, sum(salary) over(order by salary ) as [Running Salaries] from employee_data;












 