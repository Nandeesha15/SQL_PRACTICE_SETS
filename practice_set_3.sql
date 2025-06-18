-- orders TABLE --

CREATE TABLE orders(orderid INT PRIMARY KEY, customerID INT NOT NULL,orderdate DATE);

DESC orders;

INSERT INTO orders VALUES(10308,2,'1996-09-18');
INSERT INTO orders VALUES(10309,37,'1996-09-19');
INSERT INTO orders VALUES(10310,77,'1996-09-20');

SELECT * FROM orders;

-- customers TABLE --

CREATE TABLE customers(customerID INT PRIMARY KEY,customerName VARCHAR(20),contactName VARCHAR(20),country VARCHAR(10));

DESC customers;

INSERT INTO customers VALUES(1,"Alfreds Futter","Maria Anders","Germany");
INSERT INTO customers VALUES(2,"Ana Trujillo ","Ana Trujillo","Mexico");
INSERT INTO customers VALUES(3,"Antonio Moreno ","Antonio Moreno","Mexico");

SELECT * FROM customers;

--Joins--

--1. INNER JOIN--

SELECT * 
FROM orders AS a 
INNER JOIN customers AS b
ON a.customerID = b.customerID;

--2. LEFT JOIN--

SELECT * 
FROM orders AS a 
LEFT JOIN customers AS b
ON a.customerID = b.customerID;

--3. RIGHT JOIN--

SELECT * 
FROM orders AS a 
RIGHT JOIN customers AS b
ON a.customerID = b.customerID;

--4. CROSS JOIN--

SELECT * 
FROM orders 
CROSS JOIN customers ;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders
WHERE Customers.CustomerID=Orders.CustomerID;

--5. UNION--

SELECT * 
FROM orders AS a 
LEFT JOIN customers AS b
ON a.customerID = b.customerID
UNION
SELECT * 
FROM orders AS a 
RIGHT JOIN customers AS b
ON a.customerID = b.customerID;

--PRACTICE QUESTIONS ON ABOVE TOPICS--

--1. Write a query to fetch orderid, orderdate, customerName, and country for all orders using an INNER JOIN.


SELECT orderid , orderdate, customerName,country 
FROM orders AS a
INNER JOIN customers AS b
ON a.customerID = b.customerID;

--2. Write a query to display all orders along with customerName and country. Include orders that do not have corresponding customer details.

SELECT * 
FROM orders AS a
LEFT JOIN customers AS b
ON a.customerID = b.customerID;

--3. Write a query to display all customers along with their corresponding orderid and orderdate. Include customers who have not placed any orders.

SELECT * 
FROM orders AS a
RIGHT JOIN customers AS b
ON a.customerID = b.customerID;

--4. Write a query to generate all possible combinations of customers and orders using a CROSS JOIN. How many rows are returned?

SELECT * 
FROM orders AS a
CROSS JOIN customers AS b;

--5. Write a query to find pairs of customers from the same country using a SELF JOIN. The output should include customerID, customerName, and country for both customers in each pair.

SELECT 
    c1.customerID AS Customer1_ID, 
    c1.customerName AS Customer1_Name, 
    c1.country AS Country,
    c2.customerID AS Customer2_ID, 
    c2.customerName AS Customer2_Name
FROM 
    customers AS c1
INNER JOIN 
    customers AS c2
ON 
    c1.country = c2.country
AND 
    c1.customerID < c2.customerID;
