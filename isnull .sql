
     
  select * from Customers

  --ISNULL 
  select isnull(null, '1st value null')

  select isnull('abx' , null)

  select isnull(null, null)

select coalesce('A','B','C')

 select coalesce(null,'B','C')

 select coalesce(null,null,'C')

 select Customerid , email, phonenumber from customers


 select Customerid, ISNULL(email, 'Email na') , ISNULL (phonenumber, 'Phone No Na') FROM customers

 select customerid, coalesce(email, phonenumber, 'Contact na') as [Coalesce Function]from Customers









