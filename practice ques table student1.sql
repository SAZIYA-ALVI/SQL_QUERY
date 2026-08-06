

select * from student1

-- row_number -> in case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks desc) as [ROW NUMBER] from student1

--rank -> if there's tie next rank/ranks will be skipped
select * , rank() over(order by marks desc) as [row function] from student1

-- dense rank -> if there's a tie rank will not be skipped
select *, DENSE_RANK() over(order by marks desc ) [Dense Rank] from student1

------------------------------

-- row_number -> in case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks asc) as [ROW NUMBER] from student1

--rank -> if there's tie next rank/ranks will be skipped
select * , rank() over(order by marks asc) as [row function] from student1

-- dense rank -> if there's a tie rank will not be skipped
select *, DENSE_RANK() over(order by marks asc ) [Dense Rank] from student1


















