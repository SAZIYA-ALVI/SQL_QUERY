
select * from EmployeeSalary

select *, FIRST_VALUE(Salary) over(order by Salary asc) as [Mininmum Salary] from employeeSalary


select *, FIRST_VALUE(Employeename) over(order by Salary asc) as [Emp with Mininmum Salary], FIRST_VALUE(Salary) over(order by Salary asc) as [Mininmum Salary] from employeeSalary

select *, FIRST_VALUE(EmployeeName) over(partition by department order by salary) as [First value] from employeesalary 

select*,  FIRST_VALUE(EmployeeId) over(partition by department order by salary desc) as [First Value EID],FIRST_VALUE(EmployeeName) over(partition by department order by salary) as [Fisrt Value EName] from EmployeeSalary
