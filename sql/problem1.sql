-- Question: Find the top 3 cities with the highest sales per month.

-- Create sales table
CREATE TABLE sales_table (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    sale_date DATE,
    amount INT
);

-- Insert sample data
INSERT INTO sales_table (city, sale_date, amount) VALUES
('Mumbai', '2024-01-10', 5000),
('Delhi', '2024-01-15', 7000),
('Bangalore', '2024-01-20', 10000),
('Chennai', '2024-02-05', 3000),
('Mumbai', '2024-02-08', 9000),
('Delhi', '2024-02-12', 11000),
('Bangalore', '2024-02-15', 6000),
('Mumbai', '2024-03-05', 15000),
('Delhi', '2024-03-10', 5000),
('Bangalore', '2024-03-15', 12000),
('Chennai', '2024-03-20', 8000),
('Mumbai', '2024-01-25', 7000),
('Delhi', '2024-01-30', 8000),
('Bangalore', '2024-01-28', 7500),
('Chennai', '2024-01-31', 5000),
('Mumbai', '2024-02-20', 9500),
('Delhi', '2024-02-25', 7200),
('Bangalore', '2024-02-28', 8900),
('Chennai', '2024-02-18', 4000),
('Mumbai', '2024-03-25', 12000),
('Delhi', '2024-03-28', 13000),
('Bangalore', '2024-03-29', 14000),
('Chennai', '2024-03-30', 7000),
('Mumbai', '2024-01-05', 6000),
('Delhi', '2024-01-12', 8500),
('Bangalore', '2024-01-17', 9500),
('Chennai', '2024-01-22', 3000),
('Mumbai', '2024-02-02', 8200),
('Delhi', '2024-02-07', 12000),
('Bangalore', '2024-02-10', 7300),
('Chennai', '2024-02-14', 4500),
('Mumbai', '2024-03-03', 16000),
('Delhi', '2024-03-09', 5300),
('Bangalore', '2024-03-12', 11000),
('Chennai', '2024-03-18', 7500),
('Mumbai', '2024-01-18', 6500),
('Delhi', '2024-01-23', 7800),
('Bangalore', '2024-01-27', 8200),
('Chennai', '2024-01-29', 4800);

-- Expected Output:
-- | sale_month | city      | total_sales |
-- |-----------|----------|-------------|
-- | 2024-01   | Bangalore | 35200      |
-- | 2024-01   | Delhi     | 37800      |
-- | 2024-01   | Mumbai    | 35100      |
-- | 2024-02   | Delhi     | 30200      |
-- | 2024-02   | Mumbai    | 27700      |
-- | 2024-02   | Bangalore | 22200      |
-- | 2024-03   | Bangalore | 37000      |
-- | 2024-03   | Mumbai    | 43000      |
-- | 2024-03   | Delhi     | 23300      |
