-- Create employee  table
CREATE TABLE employees (
    emp_id VARCHAR(20),
    emp_name VARCHAR(50),
    salary INT,
    dept_id VARCHAR(20),
    manager_id VARCHAR(20)
);

-- Insert data into the table
INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) VALUES
('E1', 'Rahul', 15000, 'D1', 'M1'),
('E2', 'Manoj', 15000, 'D1', 'M1'),
('E3', 'James', 55000, 'D2', 'M2'),
('E4', 'Michael', 25000, 'D2', 'M2'),
('E5', 'Ali', 20000, 'D10', 'M3'),
('E6', 'Robin', 35000, 'D10', 'M3');


SELECT * FROM employees;

-- Create the departments table
CREATE TABLE departments (
    dept_id VARCHAR(20),
    dept_name VARCHAR(50)
);

-- Insert data into the table
INSERT INTO departments (dept_id, dept_name) VALUES
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Finance'),
('D4', 'Admin');


SELECT * FROM departments;

-- Create the managers table

CREATE TABLE managers (
    manager_id VARCHAR(20),
    manager_name VARCHAR(50),
    dept_id VARCHAR(20)
);

-- Insert data into the table
INSERT INTO managers (manager_id, manager_name, dept_id) VALUES
('M1', 'Prem', 'D3'),
('M2', 'Shripadh', 'D4'),
('M3', 'Nick', 'D1'),
('M4', 'Cory', 'D1');


SELECT * FROM managers;

-- Create the projects table
CREATE TABLE projects (
    project_id VARCHAR(20),
    project_name VARCHAR(100),
    team_member_id VARCHAR(20)
);

-- Insert data into the table
INSERT INTO projects (project_id, project_name, team_member_id) VALUES
('P1', 'Data Migration', 'E1'),
('P1', 'Data Migration', 'E2'),
('P1', 'Data Migration', 'M3'),
('P2', 'ETL Tool', 'E1'),
('P2', 'ETL Tool', 'M4');


SELECT * FROM projects;


--PRACTICE QUERIES--

--1. Fetch the employee name and the department name they belong to. 

SELECT e.emp_name , d.dept_name  
FROM employees AS e 
INNER JOIN departments AS d 
ON e.dept_id = d.dept_id;

--2. Fetch all the employee name and the department name they belong to. 

SELECT e.emp_name , d.dept_name 
FROM employees AS e 
LEFT JOIN departments AS d 
ON e.dept_id = d.dept_id;

--3.  Fetch all the department name and the employee name they belong to. 

SELECT e.emp_name , d.dept_name 
FROM employees AS e 
RIGHT JOIN departments AS d 
ON e.dept_id = d.dept_id;

--4.  Fetch details of ALL emp,their manager,their department and the projects they work on.

SELECT e.emp_name,d.dept_name,m.manager_name,p.project_name
FROM employees AS e 
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
INNER JOIN managers AS m
ON m.manager_id = e.manager_id
LEFT JOIN projects AS p
ON p.team_member_id = e.emp_id;



