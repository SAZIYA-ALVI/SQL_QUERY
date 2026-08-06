


--partition by clause
select * from student1

select *, ROW_NUMBER() over(partition by subject order by marks desc) as [row number desc ] from student1 

select * , ROW_NUMBER() over(partition by subject order by marks)as [row number asc] from student1

select * , ROW_NUMBER() over(partition by student_name order by marks desc)as [row number desc] from student1

select * , Rank()  over(partition by student_name order by marks desc) as [Rank desc] from student1

select * , Rank()  over(partition by subject order by marks desc) as [Rank desc] from student1

select * , DENSE_RANK() over (partition by subject order by marks desc ) as [Dense Rank Desc] from student1

select * , DENSE_RANK() over (partition by student_name order by marks desc ) as [Dense Rank Desc] from student1

select * , DENSE_RANK() over (partition by student_name order by marks asc ) as [Dense Rank asc] from student1














