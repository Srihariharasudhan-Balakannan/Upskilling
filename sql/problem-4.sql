-- Problem 4  
-- Find Employees Who Have the Same Salary as Someone in the Same Department  

-- Create employee_salary table  
CREATE TABLE employee_salary (  
emp_id INT AUTO_INCREMENT PRIMARY KEY,  
emp_name VARCHAR(50),  
salary INT,  
department VARCHAR(50)  
);  

-- Insert data in employee_salary  
INSERT INTO employee_salary (emp_name, salary, department) VALUES  
('Neha', 50000, 'HR'),  
('Ravi', 70000, 'IT'),  
('Aman', 50000, 'HR'),  
('Pooja', 90000, 'IT'),  
('Karan', 70000, 'IT');  

-- Expected output  
-- +--------+---------+--------+------------+  
-- | emp_id | emp_name | salary | department |  
-- +--------+---------+--------+------------+  
-- | 1      | Neha    | 50000  | HR         |  
-- | 3      | Aman    | 50000  | HR         |  
-- | 2      | Ravi    | 70000  | IT         |  
-- | 5      | Karan   | 70000  | IT         |  
-- +--------+---------+--------+------------+  
