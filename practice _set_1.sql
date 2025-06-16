--Table Creation--

CREATE TABLE practicee1(
    name varchar(20),
    usn  int,
    mail_id varchar(20),
    state varchar(20),
    PRIMARY KEY(usn)
);

DESC practicee1;

--Inserting Values to Table--

INSERT INTO practicee1(name,usn,mail_id,state)
 VALUES
('nandish',101,'nandish@gmail.com','karnataka'),
('karan',102,'karan@gmail.com','tamilnadu'),
('karthik',103,'karthik@gmail.com','karnataka'),
('sumanth',104,'sumanth@gmail.com','kerala'),
('prajwal',105,'prajwal@gmail.com','punjab');

SELECT * FROM practicee1;

 --SELECT Statements--

 SELECT name,usn FROM practicee1;

 SELECT DISTINCT state FROM practicee1;

 SELECT COUNT(DISTINCT name) FROM practicee1;

 --WHERE Statements--

 SELECT * FROM practicee1 WHERE name = "nandish";

 SELECT name FROM practicee1 WHERE usn >= 103;

 --AND,OR,NOT--

 SELECT * FROM practicee1 WHERE name = "nandish" AND usn = 105;

 SELECT * FROM practicee1 WHERE NOT name = "nandish";

 SELECT * FROM practicee1 WHERE name = "karan" OR usn = 105; 

 SELECT * FROM practicee1 WHERE NOT name ="karthik" AND NOT name= "karan";

 SELECT * FROM practicee1 WHERE state = "karnataka" AND(name= "nandish" OR usn =103);

 --ORDER BY--

SELECT * FROM practicee1 ORDER BY name DESC;

SELECT * FROM practicee1 ORDER BY usn,name;

--INSERT INTO--

INSERT INTO practicee1 VALUES(NULL,106,"madhav@gmail.com","odisha");

INSERT INTO practicee1 VALUES("Om Vardhan",107 ,"om@gmail.com","odisha");
 
--NULL value--

SELECT * FROM practicee1 WHERE name IS NULL;

SELECT * FROM practicee1 WHERE usn IS NOT NULL;

--UPDATE--

UPDATE practicee1 SET name = "nandishkr" , mail_id = "nandishkr@gmail.com" WHERE usn =101;

UPDATE practicee1 SET state = "KA" WHERE state = "karnataka" OR name = "karan";

--DELETE--

DELETE FROM practicee1 WHERE usn = 107;

--LIMIT--

SELECT * FROM practicee1 WHERE state = "KA" LIMIT 2;

SELECT * FROM practicee1 LIMIT 2 OFFSET 2;

--PRACTICE QUESTIONS ON ABOVE TOPICS--

--1. Write a query to display the names and mail_id of all users who belong to the state KA or kerala.

SELECT name,mail_id FROM practicee1 WHERE state = "kerala" OR state = "KA";

--2. Write a query to display all the records where the name is NULL.

SELECT * FROM practicee1 WHERE name IS NULL;

--3. Write a query to sort the table in ascending order of state and within the same state, in descending order of usn.

SELECT * FROM practicee1 ORDER BY state ASC, usn DESC;

--4. Write a query to update the state of the user with usn = 106 to KA.

UPDATE practicee1 SET state = "KA" WHERE usn = 106;

--5. Write a query to count the number of users whose state is either KA or kerala.

SELECT COUNT(state) FROM  practicee1 WHERE state = "KA" OR state = "kerala";

--6. Write a query to fetch only the top 3 rows based on the ascending order of usn.

SELECT * FROM practicee1 ORDER BY usn ASC LIMIT 3;