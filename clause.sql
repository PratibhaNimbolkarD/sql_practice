USE COLLEGE;

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

SELECT *
FROM student
ORDER BY branch, roll_no DESC;