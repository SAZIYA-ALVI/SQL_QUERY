
create database [Emp_table]
use[Emp_table]

create Table employee_data(
emp_id int primary key,
emp_name varchar(100) ,
dept varchar(100),
salary decimal(10,2),
hire_date DATE,
city varchar(30)
);
INSERT INTO employee_data
(emp_id, emp_name, dept, salary,  hire_date, city)
VALUES
(101, 'Amit',   'IT',      50000,  '2022-01-15', 'Delhi'),
(102, 'Rahul',  'IT',      60000,  '2021-03-20', 'Mumbai'),
(103, 'Priya',  'HR',      45000,  '2023-05-10', 'Delhi'),
(104, 'Neha',   'HR',      55000,  '2022-07-18', 'Noida'),
(105, 'Rohan',  'Sales',   70000, '2021-11-11', 'Pune'),
(106, 'Karan',  'Sales',   65000,  '2020-06-25', 'Mumbai'),
(107, 'Anjali', 'Finance', 75000, '2019-08-14', 'Delhi'),
(108, 'Vikas',  'Finance', 72000, '2020-10-01', 'Jaipur'),
(109, 'Sneha',  'IT',      60000,  '2023-02-28', 'Delhi'),
(110, 'Arjun',  'Sales',   70000,  '2022-09-30', 'Noida');


