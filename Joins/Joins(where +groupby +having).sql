
-- Databse -> master

select * from Department
select * from Employee

-- all dept name 
select d.dept_name from Employee e left join Department d on e.dept_id = d.dept_id;

-- all employee name
select e.emp_name from Employee e  right join Department d on e.dept_id = d.dept_id	   ;

-- emp_name + dept_name +salary 
select e.emp_name , d.dept_name , salary from Employee e join Department d on e.dept_id = d.dept_id;

-- IT dept'employee
select e.emp_name,d.dept_name from employee e join Department d on e.dept_id = d.dept_id where dept_name = 'IT';

-- find employee whose no department's any match 
select d.dept_id,e.emp_name from employee e join Department d on d.dept_id = e.dept_id where d.dept_id is null;

-- dept = it salary >50000
select d.dept_id,e.emp_name ,e.salary from  employee e join Department d on d.dept_id = e.dept_id where e.salary >50000;

-- HR dept empoyee' s Total salary
select d.dept_name, sum(e.salary) TotalSum from employee e join Department d on e.dept_id=d.dept_id  
where dept_name = 'hr'
group by dept_name;

-- IT dept employee's total salary
select d.dept_name, sum(e.salary) TotalSum from employee e join Department d on e.dept_id=d.dept_id  
where dept_name = 'It'
group by dept_name;

-- hr dept employee count
select d.dept_name, count(*) TotalSum from employee e join Department d on e.dept_id=d.dept_id  
group by dept_name
having count(*)>0;

-- all dept total salary
select d.dept_name, sum(e.salary ) as Total_Salary  from employee e join Department d on e.dept_id = d.dept_id 
group by dept_name

-- HIghest total salary's dept
select d.dept_name , sum(e.salary) as Highest_dept_salary	from employee e join Department d on e.dept_id = d.dept_id
group by dept_name ;

--  all dept+avg salary
select d.dept_name , avg(e.salary) as Avg_dept_salary	from employee e join Department d on e.dept_id = d.dept_id
group by dept_name ;

--dept avg salary > 62250 
select avg(salary) from employee -- 62250

select d.dept_name , avg(e.salary) as avg_dept_salary	from employee e join Department d on e.dept_id = d.dept_id
group by dept_name 
having avg(salary) > 62250;

select d.dept_name , max(e.salary) as Highest_dept_salary	from employee e join Department d on e.dept_id = d.dept_id
group by dept_name ;

-- 























