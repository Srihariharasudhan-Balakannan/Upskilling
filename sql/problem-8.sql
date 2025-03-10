-- Problem 8
-- Find customers who placed at least 3 orders in the last 6 months.

-- Create orders table
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  amount INT
);

-- Insert data in orders
INSERT INTO orders (customer_id, order_date, amount) VALUES
(101, '2024-09-15', 1000),
(102, '2024-10-12', 2000),
(101, '2024-11-20', 1500),
(103, '2024-12-05', 2500),
(101, '2025-01-08', 3000),
(102, '2025-02-18', 3500),
(101, '2025-03-02', 4000);

-- Expected output
-- +-------------+--------------+
-- | customer_id | total_orders |
-- +-------------+--------------+
-- | 101         | 4            |
-- +-------------+--------------+
