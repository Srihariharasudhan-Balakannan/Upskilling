-- Problem 1
-- Top 3 Cities with Highest Sales Per Month

-- Create sales_table table
CREATE TABLE sales_table (
sale_id INT AUTO_INCREMENT PRIMARY KEY,
city VARCHAR(50),
sale_date DATE,
amount INT );

-- Insert data in sales_table
INSERT INTO sales_table (city, sale_date, amount) VALUES
('Mumbai', '2024-01-10', 5000),
('Delhi', '2024-01-15', 7000),
('Bangalore', '2024-01-20', 10000),
('Chennai', '2024-02-05', 3000),
('Mumbai', '2024-02-08', 9000),
('Hyderabad', '2024-01-12', 6500),
('Kolkata', '2024-01-18', 7200),
('Bangalore', '2024-02-10', 8000),
('Delhi', '2024-02-15', 8500),
('Hyderabad', '2024-02-18', 9200);

-- Expected output
-- +------------+-----------+-------------+
-- | sale_month | city      | total_sales |
-- +------------+-----------+-------------+
-- | 2024-01    | Bangalore |       10000 |
-- | 2024-01    | Kolkata   |        7200 |
-- | 2024-01    | Delhi     |        7000 |
-- | 2024-02    | Hyderabad |        9200 |
-- | 2024-02    | Mumbai    |        9000 |
-- | 2024-02    | Delhi     |        8500 |
-- +------------+-----------+-------------+
