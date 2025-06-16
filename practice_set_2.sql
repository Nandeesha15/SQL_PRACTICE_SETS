--Table Creation--

CREATE TABLE practicee2(
    name varchar(20),
    usn  int,
    mail_id varchar(20),
    state varchar(20),
    PRIMARY KEY(usn)
);

DESC practicee1;

--Inserting Values to Table--

INSERT INTO practicee2(name,usn,mail_id,state)
 VALUES
('nandish',101,'nandish@gmail.com','karnataka'),
('karan',102,'karan@gmail.com','tamilnadu'),
('karthik',103,'karthik@gmail.com','karnataka'),
('sumanth',104,'sumanth@gmail.com','kerala'),
('prajwal',105,'prajwal@gmail.com','punjab');

SELECT * FROM practicee2;

--MIN and MAX--

SELECT MIN(usn) FROM practicee2;

SELECT MIN(name) FROM practicee2;

SELECT MAX(usn) AS max_usn FROM practicee2 WHERE state = "karnataka";

--COUNT, AVG, SUM--

SELECT COUNT(name) FROM  practicee2;

SELECT COUNT(name) FROM  practicee2 WHERE usn = 101 OR usn = 102;

SELECT AVG(usn) AS avg_usn FROM practicee2;

--LIKE--

SELECT * FROM practicee2 WHERE name LIKE 'na%n';

--IN--

SELECT * FROM practicee2 WHERE name IN("nandish","karan","karthik");

SELECT mail_id AS data FROM practicee2  WHERE USN IN(104,105);

SELECT * FROM practicee2
WHERE state IN (SELECT state FROM practicee2);

--BETWEEN--

SELECT * FROM practicee2 WHERE usn BETWEEN 102 AND 105;

SELECT * FROM practicee2 WHERE usn NOT BETWEEN 102 AND 105;

--aliases--

SELECT name AS CUSTOMER_NAME FROM practicee2;

--PRACTICE QUESTIONS ON ABOVE TOPICS--

--1. The earliest (MIN) and latest (MAX) usn values in the practicee2 table.

SELECT MAX(usn) AS max_usn , MIN(USN) AS min_usn FROM practicee2;

--2. The total number of users and the average usn value for users in the table.

SELECT COUNT(usn) AS number_of_users , AVG(usn) AS average_usn FROM  practicee2;

--3. All users whose mail_id ends with @gmail.com.

SELECT mail_id FROM practicee2 WHERE mail_id LIKE '%@gmail.com';

--4. Names of users whose state contains the letter "a" anywhere in the word.

SELECT state FROM  practicee2 WHERE state like '%a%';

--5. All users who belong to the states 'karnataka', 'kerala', or 'tamilnadu'.

SELECT * FROM practicee2 WHERE state IN('karnataka','kerala','tamilnadu');

--6. Use aliases to rename mail_id as "Email" and state as "Region" in the output.

SELECT mail_id AS EMAIL,state AS Region FROM practicee2;

