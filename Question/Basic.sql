
--Database -> master 

-- Level 1 — Basic
select * from orders ;

-- to display only order_id, customer_name, product_name and total_amount.
select order_id, customer_name, product_name,total_amount from orders;

--Total orders 
select count(*)as total from orders;

--how many product sell
select sum(quantity) as total_product from orders ;

--Total sales amount 
select sum(total_amount) as total_sale from orders; 

--Highest order amount 
select max(total_amount) as Highest from orders
--Lowest order amount .
select min(total_amount) as lowest from orders

-- to find Average order amount 
select avg(total_amount) as Avg_amount from orders

-- To find Delivered orders 
select * from orders where order_status = 'delivered'	;

-- find Delhi city's orders
select * from orders where city = 'Delhi' ;

