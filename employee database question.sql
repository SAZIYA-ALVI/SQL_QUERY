
-- employee database question

--How do you select all columns from the Employee ?

SELECT * FROM Employee

--how do you select only firstname and last name columns the employee table?

SELECT FirstName,LastName from Employee

--How do you find all employee who work in the it dept?

select * from Employee where Department = 'IT'
 --OR 
  select * from Employee where Department like 'IT'

--How do you select employee with a salary greater than 70,000 ?

select * from Employee where Salary>700000

--How do you sort the results by last name in ascending order?
 select * from Employee 
   order by LastName asc

--How do you select distict dept from the employee table?

select distinct Department from Employee 
--How do you count the number of employee in each dept ?
select Department ,count(*) from Employee  group by Department
--
select Department ,count(*)(EmployeeID) [Number of Employee] from Employee  group by Department

--How do you find the max salary in the employee table ?

select max(salary) from Employee

select max(salary) [ max salary]  from Employee

--How do you find the avg salary of employee in the 'finance' dept

select avg(salary) [avg salary ]from Employee where Department = 'Finance'
--How do you select employee whose last name starts with 'M'?

SELECT * from Employee where LastName like 'm%'



