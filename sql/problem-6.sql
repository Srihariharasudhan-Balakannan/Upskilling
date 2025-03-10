-- Problem 6 
-- Delete Duplicate Rows While Keeping Only One Unique Record

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
-- +---------+----------+------------------+  
-- | user_id | user_name | email           |  
-- +---------+----------+------------------+  
-- | 1       | Sameer   | sameer@gmail.com |  
-- | 2       | Anjali   | anjali@gmail.com |  
-- | 4       | Rohan    | rohan@gmail.com  |  
-- +---------+----------+------------------+  

-- Solution:
WITH ranked_users AS (
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY user_name, email ORDER BY user_id) AS unique_rank
FROM users
)
DELETE FROM users 
WHERE user_id IN (
SELECT user_id 
FROM ranked_users 
WHERE unique_rank != 1
);
SELECT * FROM users;
