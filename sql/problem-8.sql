-- Problem 8  
-- Find Customers with at Least 3 Orders in the Last 6 Months  

-- Create orders table  
CREATE TABLE orders (  
order_id INT AUTO_INCREMENT PRIMARY KEY,  
customer_id INT,  
order_date DATE,  
amount INT  
);  

-- Insert data in orders  
INSERT INTO orders (customer_id, order_date, amount) VALUES  
(101, '2024-01-10', 1000),  
(102, '2024-02-15', 2000),  
(101, '2024-03-20', 1500),  
(103, '2024-04-05', 2500),  
(101, '2024-05-08', 3000);  

-- Expected output  
-- +-------------+------------+  
-- | customer_id | order_count |  
-- +-------------+------------+  
-- | 101         |      3     |  
-- +-------------+------------+  
