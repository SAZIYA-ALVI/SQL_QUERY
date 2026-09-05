
-- Database -> Master 
-- Level 2 — GROUP BY

-- Employee-wise total sales.
   select employee_name, sum(total_amount) as sale from orders 
   group by employee_name;


-- Employee-wise total orders count .
select employee_name, count(*) as order_count from orders group by employee_name

--Category-wise total sales.
select category, sum(quantity) as total_sale from orders
group by category;

--City-wise total product 
select city ,sum(total_amount) as city_wise from orders
group by city

--City-wise total orders.
select city ,count(*) as total_order from orders
group by city

--Payment method-wise orders count.
select payment_method, count(*) as method_wise from orders 
group by payment_method	;


--Order status-wise orders count.
select order_status, count(*) as order_wise from orders 
group by order_status;


--all product's total quantity sold .
select product_name, sum(quantity) as total_quantity from orders
group by product_name;

--Find out how many orders each customer has placed.
select  customer_name , count(*) as order_place  from orders
group by  customer_name



