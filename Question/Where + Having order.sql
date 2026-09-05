
-- Database -> Master 
-- Level 3 — WHERE + HAVING

-- Find orders greater than 10,000.
select employee_name, SUM(total_amount) as total_sales from orders
group by employee_name
having sum(total_amount) > 50000;

--find such employees whose total sales is more than ₹50,000.
select employee_name, sum(total_amount) as total_sale from orders 
group by employee_name
having sum(total_amount) >50000;

--Find such categories whose total sales is more than ₹50,000.
select category , sum(total_amount) as total_sale from orders
group by category
having sum(total_amount)>50000

-- Find such cities where more than 3 orders have come.
select city, count(order_id) as total_order from orders 
group by city 
having count(order_id)>3;

--Find such products whose total quantity sold is more than 5.
select product_name , sum(quantity) as total_quantity from orders
group by product_name
having sum(quantity)>5;

--Find the total sales of only Delivered orders.
select sum(total_amount) as delivery_sales from orders 
where order_status = 'Delivered';

--Find the total value of Cancelled orders.
select sum(total_amount) as total_value from orders
where order_status = 'Cancelled';

--Find the count of Pending orders.
select count(*) as pending_orders from orders 
where order_status = 'pending'


