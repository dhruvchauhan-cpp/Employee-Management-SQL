CREATE DATABASE employee_management;
USE employee_management;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
);
INSERT INTO departments (department_id, department_name)
VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'FINANCE'),
(4, 'MARKETING'),
(5, 'SALES');
CREATE TABLE employees (
   employee_id INT PRIMARY KEY,
   employee_name VARCHAR(50),
   age INT,
   salary DECIMAL(10,2),
   department_id INT,
   joining_date DATE,
   FOREIGN KEY (department_id) REFERENCES departments(department_id)
   );
STEP 6: INSERT EMPLOYEE DATA

INSERT INTO employees
(employee_id, employee_name, age, salary, department_id, joining_date)
VALUES
(101, 'Dhruv', 24, 35000, 1, '2025-01-15'),
(102, 'Parul', 26, 42000, 1, '2024-08-10'),
(103, 'Priya', 25, 38000, 2, '2025-02-20'),
(104, 'Neha', 28, 50000, 3, '2023-11-05'),
(105, 'Rohit', 23, 30000, 4, '2025-04-12'),
(106, 'Karan', 27, 45000, 5, '2024-06-18'),
(107, 'Simran', 29, 55000, 3, '2022-09-25'),
(108, 'Arjun', 25, 40000, 1, '2025-03-08'),
(109, 'Anjali', 24, 32000, 2, '2025-05-14'),
(110, 'Vikas', 30, 60000, 5, '2022-07-30');
  SELECT * FROM employees WHERE salary > 40000;
  --  SELECT * FROM employees ORDER BY salary DESC;
     SELECT * FROM employees;
SELECT * FROM employees WHERE salary > 30000;
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
SELECT * FROM employees ORDER BY salary ASC LIMIT 2;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary
FROM employees;
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 50000;
SELECT *
FROM employees
WHERE salary > 30000;
UPDATE employees
SET salary = salary + 5000
WHERE employee_id = 1;
DELETE FROM employees
WHERE employee_id = 1;

