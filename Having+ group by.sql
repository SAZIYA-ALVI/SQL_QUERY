
-- emp_table
select * from employee_data	;

--Find departments having more than 2 employees
select dept,count(*)as dupl from employee_data
group by dept
having count(*)>2

--Find departments where average salary is greater than 60,000.
select dept,avg(salary) as employee_count from employee_data
group by dept
having avg(salary)>60000

--Find departments where total salary is greater than 1,00,000.
select dept,sum(salary)	as employee from employee_data
group by dept 
having sum(salary)>100000;

--Find departments where the highest salary is greater than 70,000.
select dept,max(salary) as highest_salary from employee_data
group by dept
having max(salary)>70000;

--Find departments having more than 2 employees.
select dept,count(*) as dept_count from employee_data
group by dept
having count(*)>2;

--Find departments having exactly 2 employees
select dept, count(*)as dept_ccount from employee_data
group by dept
having count(*) = 2;

--Find departments having less than 3 employees
select dept, count(*) as dept_count	from employee_data
group by dept
having count(*)<3;

--Find departments where the average salary is greater than 60,000.
select dept, avg(salary) as avg_sal from employee_data
group by dept
having avg(salary)>60000;

--Find departments where the total salary is greater than 1,50,000.
select dept, sum(salary) as salary from employee_data
group by dept
having sum(salary)>150000;

--Find departments where the highest salary is greater than 70,000	 
select dept, max(salary) as highest_sal	from employee_data
group by dept
having max(salary)>70000;

--Find departments where the minimum salary is less than 50,000
select dept,min(salary) as min_sal from employee_data
group by dept
having min(salary)<50000;

--Find departments having more than 2 employees AND average salary greater than 60,000.
select dept, avg(salary) as Avg from employee_data
group by dept
having count(*)>2 and avg(salary)>60000;

--Find departments where at least one employee earns more than 70,000.
select dept from employee_data
group by dept
having max (salary)>70000	   ;
