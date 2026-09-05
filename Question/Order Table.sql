
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_status VARCHAR(20),
    customer_name VARCHAR(50),
    employee_name VARCHAR(50),
    product_name VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    city VARCHAR(30),
    delivery_date DATE
);
INSERT INTO orders VALUES
(1001, '2026-01-05', 'Delivered', 'Rahul Sharma', 'Amit Kumar', 'Laptop', 'Electronics', 1, 55000, 55000, 'UPI', 'Noida', '2026-01-08'),

(1002, '2026-01-07', 'Delivered', 'Priya Singh', 'Neha Verma', 'Mouse', 'Electronics', 2, 800, 1600, 'Card', 'Delhi', '2026-01-09'),

(1003, '2026-01-10', 'Pending', 'Arjun Gupta', 'Amit Kumar', 'Keyboard', 'Electronics', 1, 1500, 1500, 'Cash', 'Ghaziabad', NULL),

(1004, '2026-01-12', 'Delivered', 'Sneha Khan', 'Riya Sharma', 'Office Chair', 'Furniture', 2, 7500, 15000, 'UPI', 'Noida', '2026-01-15'),

(1005, '2026-01-15', 'Cancelled', 'Vikas Yadav', 'Neha Verma', 'Monitor', 'Electronics', 1, 12000, 12000, 'Card', 'Delhi', NULL),

(1006, '2026-01-18', 'Delivered', 'Anjali Mehta', 'Amit Kumar', 'Desk', 'Furniture', 1, 9000, 9000, 'UPI', 'Noida', '2026-01-21'),

(1007, '2026-01-20', 'Delivered', 'Rohit Jain', 'Riya Sharma', 'Headphones', 'Electronics', 3, 2500, 7500, 'Card', 'Faridabad', '2026-01-23'),

(1008, '2026-01-22', 'Pending', 'Pooja Verma', 'Neha Verma', 'Printer', 'Electronics', 1, 8500, 8500, 'UPI', 'Delhi', NULL),

(1009, '2026-01-25', 'Delivered', 'Karan Malhotra', 'Amit Kumar', 'Notebook', 'Stationery', 10, 100, 1000, 'Cash', 'Noida', '2026-01-27'),

(1010, '2026-01-27', 'Delivered', 'Nisha Kapoor', 'Riya Sharma', 'Pen', 'Stationery', 20, 20, 400, 'UPI', 'Ghaziabad', '2026-01-28'),

(1011, '2026-02-02', 'Delivered', 'Aman Khan', 'Neha Verma', 'Laptop', 'Electronics', 2, 55000, 110000, 'Card', 'Delhi', '2026-02-06'),

(1012, '2026-02-05', 'Delivered', 'Simran Kaur', 'Amit Kumar', 'Table', 'Furniture', 2, 6000, 12000, 'UPI', 'Noida', '2026-02-08'),

(1013, '2026-02-08', 'Cancelled', 'Mohit Singh', 'Riya Sharma', 'Sofa', 'Furniture', 1, 25000, 25000, 'Cash', 'Faridabad', NULL),

(1014, '2026-02-12', 'Delivered', 'Tanya Agarwal', 'Neha Verma', 'Mobile', 'Electronics', 2, 22000, 44000, 'UPI', 'Delhi', '2026-02-15'),

(1015, '2026-02-15', 'Pending', 'Deepak Kumar', 'Amit Kumar', 'Camera', 'Electronics', 1, 45000, 45000, 'Card', 'Noida', NULL),

(1016, '2026-02-18', 'Delivered', 'Ravi Sharma', 'Riya Sharma', 'Books', 'Stationery', 5, 500, 2500, 'Cash', 'Ghaziabad', '2026-02-20'),

(1017, '2026-02-20', 'Delivered', 'Meena Gupta', 'Neha Verma', 'Keyboard', 'Electronics', 2, 1500, 3000, 'UPI', 'Delhi', '2026-02-22'),

(1018, '2026-02-23', 'Delivered', 'Sahil Verma', 'Amit Kumar', 'Office Chair', 'Furniture', 1, 7500, 7500, 'Card', 'Noida', '2026-02-26'),

(1019, '2026-02-25', 'Cancelled', 'Komal Jain', 'Riya Sharma', 'Printer', 'Electronics', 1, 8500, 8500, 'UPI', 'Faridabad', NULL),

(1020, '2026-02-28', 'Delivered', 'Varun Mehta', 'Neha Verma', 'Monitor', 'Electronics', 2, 12000, 24000, 'Card', 'Delhi', '2026-03-03');

select * from orders

-- delete row from the table 
DELETE FROM orders
WHERE order_id = 1018;