CREATE DATABASE COLLEGES;

USE COLLEGES;

CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO student (roll_no, fname, lname, age, city)
VALUES 
    (1, 'John', 'Doe', 20, 'New York'),
    (2, 'Jane', 'Smith', 21, 'Los Angeles'),
    (3, 'Alice', 'Johnson', 22, 'Chicago'),
    (4, 'Bob', 'Williams', 23, 'Houston');



SELECT COUNT(*) AS Total_Students FROM student;

-- Finding the youngest student
SELECT MIN(age) AS Youngest_Student_Age FROM student;

-- Finding the oldest student
SELECT MAX(age) AS Oldest_Student_Age FROM student;

-- Finding the average age of students
SELECT AVG(age) AS Average_Student_Age FROM student;

-- Combining all statistics in one query
SELECT 
    COUNT(*) AS Total_Students,
    MIN(age) AS Youngest_Student_Age,
    MAX(age) AS Oldest_Student_Age,
    AVG(age) AS Average_Student_Age
FROM student;