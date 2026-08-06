
select * from table1

select * from table2
  
  -- left anti join
select * from table1 left join table2 on table1.C1= table2.C1
where table2.C1 is null

--right anti join

select * from table1 right join table2 on table1.C1= table2.C1
WHERE table1.C2 IS NULL