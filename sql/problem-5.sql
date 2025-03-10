-- Problem 5  
-- Find Duplicate Records in a Table  

-- Create users table  
CREATE TABLE users (  
user_id INT AUTO_INCREMENT PRIMARY KEY,  
user_name VARCHAR(50),  
email VARCHAR(100)  
);  

-- Insert data in users  
INSERT INTO users (user_name, email) VALUES  
('Sameer', 'sameer@gmail.com'),  
('Anjali', 'anjali@gmail.com'),  
('Sameer', 'sameer@gmail.com'),  
('Rohan', 'rohan@gmail.com'),  
('Rohan', 'rohan@gmail.com');  

-- Expected output  
-- +----------+----------+-----------------+  
-- | user_name | email              | count |  
-- +----------+----------+-----------------+  
-- | Sameer   | sameer@gmail.com   |   2   |  
-- | Rohan    | rohan@gmail.com    |   2   |  
-- +----------+----------+-----------------+  

-- Solution: 
WITH ranked_table AS (
SELECT user_name, email, COUNT(*) AS count 
FROM users 
GROUP BY user_name, email
HAVING count > 1 )
SELECT * FROM ranked_table;
