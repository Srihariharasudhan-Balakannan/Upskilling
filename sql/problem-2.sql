 -- Problem 2  
-- Running Total of Sales for Each City  

-- Create sales_data table  
CREATE TABLE sales_data (  
sale_id INT AUTO_INCREMENT PRIMARY KEY,  
city VARCHAR(50),  
sale_date DATE,  
amount INT );  

-- Insert data in sales_data  
INSERT INTO sales_data (city, sale_date, amount) VALUES  
('Mumbai', '2024-01-10', 5000),  
('Delhi', '2024-01-15', 7000),  
('Mumbai', '2024-01-20', 3000),  
('Delhi', '2024-02-05', 6000),  
('Mumbai', '2024-02-08', 8000);  

-- Expected output  
-- +---------+--------+------------+--------+---------------+  
-- | sale_id | city   | sale_date  | amount | running_total |  
-- +---------+--------+------------+--------+---------------+  
-- | 1       | Mumbai | 2024-01-10 |   5000 |         5000  |  
-- | 3       | Mumbai | 2024-01-20 |   3000 |         8000  |  
-- | 5       | Mumbai | 2024-02-08 |   8000 |        16000  |  
-- | 2       | Delhi  | 2024-01-15 |   7000 |         7000  |  
-- | 4       | Delhi  | 2024-02-05 |   6000 |        13000  |  
-- +---------+--------+------------+--------+---------------+  

