CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    join_date DATE,
    city VARCHAR(100)
);

INSERT INTO Employees VALUES
(1, 'Alice Smith', 'HR', 45000, '2021-01-10', 'New York'),
(2, 'Bob Jones', 'IT', 60000, '2019-06-23', 'Los Angeles'),
(3, 'Charlie Lee', 'IT', 55000, '2022-03-14', 'San Diego'),
(4, 'Diana Prince', 'Finance', 48000, '2020-11-05', 'New York'),
(5, 'Evan Stone', 'HR', 52000, '2021-08-19', 'Chicago'),
(6, 'Fiona Bruce', 'IT', 70000, '2018-09-30', 'Boston'),
(7, 'George King', 'Finance', 62000, '2017-04-15', 'Seattle'),
(8, 'Hannah Ray', 'HR', 46000, '2023-02-01', 'Denver'),
(9, 'Ian Reed', 'IT', 50000, '2022-12-12', 'New York'),
(10, 'Julia Marks', 'Finance', 54000, '2020-06-06', 'San Diego');


select * from Employees;

-- Questions

-- 1.List all employees who work in the 'IT' department.
select * from Employees where department = 'IT';

-- 2.Show employees whose salary is greater than 50000.
select * from Employees where salary > 50000;

-- 3.Find employees located in 'New York'.
select * from Employees where city = 'New York';

-- 4.Get employees who joined after 2020.
select * from Employees where join_date > '2020-12-31';

-- 5.List employees from the 'HR' department with a salary below 50000.
select * from Employees where department = 'HR' and salary < 50000;

-- 6.Find employees whose names start with the letter 'A'
select * from Employees where name like 'A%';	

-- 7.List employees whose name contains 'an'.
select * from Employees where name like '%an%';

-- 8.Find employees from 'San Diego'.
select * from Employees where city = 'San Diego';

-- 9.Get employees in the 'Finance' department who joined before 2021.
select * from Employees where department = 'Finance' and join_date < '2021-01-01';

-- 10.List employees with salaries between 50000 and 60000.
select * from Employees where salary between 50000 and 60000;

-- 11.Find employees whose name ends with 'e'.
select * from Employees where name like '%e';

-- 12.Get employees from cities that start with 'S'.
select * from Employees where city like 'S%';

-- 13.List employees who work in either 'HR' or 'Finance', and have salary > 50000.
select * from Employees where (department = 'HR' or department = 'Finance') and salary > 50000;

-- 14.Find employees whose names have exactly two words.
select * from Employees where name like '% %';

-- 15.List employees who joined in 2022 and are from 'New York' or 'San Diego'.
select * from Employees where year(join_date) = 2022 and (city = 'New York' or city = 'San Diego');

-- 16.Find employees whose city name ends with 'go'.
select * from Employees where city like '%go';

-- 17.Get employees whose names contain double letters like 'ee', 'oo', etc.
select * from Employees where name REGEXP '(.)\\1'; 

-- 18.List employees whose name contains the letter 'r' but not 'a'.
select * from Employees where name like '%r%' and name not like '%a%';

-- 19.Find employees in the 'IT' department whose name starts with 'C' or ends with 'e'.
select * from Employees where department = 'IT' and (name like 'C%' or name like '%e');

-- 20.List employees who joined on a day ending with '5'.
select * from Employees where day(join_date) like '%5';

-- 21.Find employees whose city length is more than 8 characters and name contains 'ar'.
select * from Employees where length(city) > 8 and name like '%ar%';

-- 22.Get all employees whose name contains exactly two spaces (i.e., three-word names like "John Michael Doe")
select * from Employees where length(name) -length(replace(name,' ','')) =2;


