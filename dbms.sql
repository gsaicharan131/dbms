CREATE DATABASE University;
USE University;
CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(100) NOT NULL);
CREATE TABLE student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(100) NOT NULL,
Age INT,
DeptID INT,
FOREIGN KEY (DeptID) REFERENCES Department(DeptID));
ALTER TABLE Student
ADD email VARCHAR(100);
INSERT INTO Department 
VALUES  
(1, 'Computer Science'),
(2, 'IT'),
(3, 'HR'),
(4, 'Sales'),
(5, 'Finance');
INSERT INTO Student VALUES 
(101,'Aman',20,1,'aman@gmail.com'),
(102,'Priya',21,2,'priya@gmail.com'),
(103,'Rahul',22,3,'rahul@gmail.com'),
(104,'Neha',23,4,'neha@gmail.com'),
(105,'Karan',24,5,'karan@gmail.com');
SELECT StudentName,
Age FROM Student 
WHERE DeptID=2;
UPDATE Student 
SET DeptID=1
WHERE StudentID =103;
DELETE FROM Student 
WHERE AgE>23;
SELECT * FROM Student;


