-- Problem 7  
-- Pivot Sales Data by Months  

-- Create sales_data table  
CREATE TABLE sales_data (  
sale_id INT AUTO_INCREMENT PRIMARY KEY,  
city VARCHAR(50),  
sale_date DATE,  
amount INT  
);  

-- Insert data in sales_data  
INSERT INTO sales_data (city, sale_date, amount) VALUES  
('Mumbai', '2024-01-10', 5000),  
('Delhi', '2024-02-15', 7000),  
('Mumbai', '2024-01-20', 3000),  
('Delhi', '2024-03-05', 6000),  
('Mumbai', '2024-02-08', 8000);  

-- Expected output  
-- +--------+----------+----------+----------+  
-- | city   | Jan_2024 | Feb_2024 | Mar_2024 |  
-- +--------+----------+----------+----------+  
-- | Mumbai |   8000   |   8000   |    0     |  
-- | Delhi  |    0     |   7000   |   6000   |  
-- +--------+----------+----------+----------+  
