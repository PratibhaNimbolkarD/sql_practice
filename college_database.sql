CREATE DATABASE COLLEGE;

USE COLLEGE;

CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO students (roll_no, fname, lname, age, city)
VALUES 
    (1, 'John', 'Doe', 20, 'New York'),
    (2, 'Jane', 'Smith', 21, 'Los Angeles'),
    (3, 'Alice', 'Johnson', 22, 'Chicago'),
    (4, 'Bob', 'Williams', 23, 'Houston');

SELECT * FROM students;

UPDATE students
SET age = 21
WHERE roll_no = 1;


UPDATE students
SET age = 22,
    city = 'San Francisco'
WHERE roll_no = 2;

ALTER TABLE students
ADD  email VARCHAR(100);

-

CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(100),
    city VARCHAR(50)
);

-- Insert sample teacher details
INSERT INTO teacher (teacher_id, first_name, last_name, subject, city)
VALUES 
    (1, 'Michael', 'Johnson', 'Mathematics', 'New York'),
    (2, 'Emily', 'Smith', 'English', 'Los Angeles'),
    (3, 'David', 'Williams', 'Science', 'Chicago'),
    (4, 'Sophia', 'Brown', 'History', 'Boston');


	INSERT INTO teacher (teacher_id, first_name, last_name, subject, city)
VALUES (5, 'Mithail', 'Johnson', 'English', 'New York')

	
	SELECT * FROM teacher;

	SELECT *
FROM teacher
WHERE subject = 'Mathematics' AND city = 'New York';

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY city;


SELECT city, COUNT(*) AS teacher_count
FROM teacher
GROUP BY city
HAVING COUNT(*) >= 2;


	SELECT 
    s.roll_no,
    s.fname AS student_first_name,
    s.lname AS student_last_name,
    s.city AS student_city,
    t.teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    t.subject,
    t.city AS teacher_city
FROM students s
LEFT JOIN teacher t ON s.city = t.city;

SELECT 
    s.roll_no,
    s.fname AS student_first_name,
    s.lname AS student_last_name,
    s.city AS student_city,
    t.teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    t.subject,
    t.city AS teacher_city
FROM teacher t
RIGHT JOIN students s ON t.city = s.city;

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY city;


SELECT city, COUNT(*) AS teacher_count
FROM teacher
GROUP BY city
HAVING COUNT(*) >= 2;