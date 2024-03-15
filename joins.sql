-- Create the company database
CREATE DATABASE company;

-- Switch to the company database
USE company;

-- Create the administrators table
CREATE TABLE administrators (
    admin_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100)
);

-- Insert sample data into the administrators table
INSERT INTO administrators (admin_id, first_name, last_name, department)
VALUES 
    (1, 'John', 'Doe', 'HR'),
    (2, 'Jane', 'Smith', 'Finance'),
    (3, 'David', 'Williams', 'IT');

-- Create the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100),
    admin_id INT,
    FOREIGN KEY (admin_id) REFERENCES administrators(admin_id)
);

-- Insert sample data into the employees table
INSERT INTO employees (emp_id, first_name, last_name, department, admin_id)
VALUES 
    (101, 'Michael', 'Johnson', 'Finance', 2),
    (102, 'Emily', 'Brown', 'IT', 3),
    (103, 'Sarah', 'Wilson', 'HR', 1);

-- Verify the data in the tables
SELECT * FROM administrators;
SELECT * FROM employees;

SELECT 
    a.admin_id,
    a.first_name AS admin_first_name,
    a.last_name AS admin_last_name,
    a.department AS admin_department,
    e.emp_id,
    e.first_name AS emp_first_name,
    e.last_name AS emp_last_name,
    e.department AS emp_department
FROM administrators a
LEFT JOIN employees e ON a.admin_id = e.admin_id;

SELECT 
    a.admin_id,
    a.first_name AS admin_first_name,
    a.last_name AS admin_last_name,
    a.department AS admin_department,
    e.emp_id,
    e.first_name AS emp_first_name,
    e.last_name AS emp_last_name,
    e.department AS emp_department
FROM employees e
RIGHT JOIN administrators a ON e.admin_id = a.admin_id;


SELECT 
    a.admin_id,
    a.first_name AS admin_first_name,
    a.last_name AS admin_last_name,
    a.department AS admin_department,
    e.emp_id,
    e.first_name AS emp_first_name,
    e.last_name AS emp_last_name,
    e.department AS emp_department
FROM administrators a
FULL JOIN employees e ON a.admin_id = e.admin_id;

SELECT 
    e1.emp_id AS emp_id_1,
    e1.first_name AS first_name_1,
    e1.last_name AS last_name_1,
    e1.department AS department_1,
    e2.emp_id AS emp_id_2,
    e2.first_name AS first_name_2,
    e2.last_name AS last_name_2,
    e2.department AS department_2
FROM employees e1
JOIN employees e2 ON e1.department = e2.department AND e1.emp_id <> e2.emp_id;