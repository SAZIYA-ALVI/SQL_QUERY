
select * from customer
select * from Order1
select * from Product

-- identify pairs of customer wholive in the same country 
select * from Customer x join Customer as y on x.Country = y.Country  and x.customerID<>y.CustomerID and x.CustomerID<>y.CustomerID

--find the customer who has spent the most on their order1	?

select * from 	 Customer as c inner join Order1 as o on c.CustomerID = o.CustomerID inner join Product AS P ON o.ProductID = p.ProductID
						--
select Customername from
(select CustomerName,sum(price) [amount spent] , DENSE_RANK() over(order by sum(price) desc)[DR] from 	 Customer as c inner join Order1 as o on c.CustomerID = o.CustomerID inner join Product AS P ON o.ProductID = p.ProductID
group by CustomerName) m where DR = 1


--find the customer who have ordered more than one type of product?
select 	Customername from customer as c join Order1 as o on c.CustomerID = o.customerID
GROUP BY customerName
having count(productid) >1

-- list all product and their correseponding orders , using a RIGHT JOIN , including products that have never been orderd?
select * from Order1 as o right join Product as p on o.productid = o.productID 



