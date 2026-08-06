-- Student table
create database student
create table student_details( 
student_name nvarchar(256),
gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2)
)

-- drop table student_details

select * from student_details

insert into student_details(student_name,gender,Age,event_date,distance)
values
('Raj sharma' , 'M' , 24, '2024-09-02', 123.11),
('Rohan sharma' , 'M' , 25, '2024-04-05', 119.11)

select* from student_details

