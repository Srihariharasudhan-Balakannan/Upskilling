-- Problem 3  
-- Find the Second Highest Salary of Employees  

-- Create employees table  
CREATE TABLE employees (  
emp_id INT AUTO_INCREMENT PRIMARY KEY,  
emp_name VARCHAR(50),  
salary INT,  
department VARCHAR(50)  
);  

-- Insert data in employees  
INSERT INTO employees (emp_name, salary, department) VALUES  
('Ravi', 70000, 'HR'),  
('Priya', 90000, 'IT'),  
('Kunal', 85000, 'Finance'),  
('Aisha', 60000, 'IT'),  
('Rahul', 95000, 'HR');  

-- Expected output  
-- +--------+----------+--------+------------+  
-- | emp_id | emp_name | salary | department |  
-- +--------+----------+--------+------------+  
-- | 2      | Priya    | 90000  | IT         |  
-- +--------+----------+--------+------------+  

-- Solution:
WITH ranked_table AS (
    SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_rank
    FROM employees
  )
SELECT emp_id, emp_name, salary, department 
FROM ranked_table
WHERE salary_rank = 2;
