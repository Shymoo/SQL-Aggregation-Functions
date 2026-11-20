-- Create Database SQL Aggregation

CREATE DATABASE SQL_Aggregation;
USE SQL_Aggregation;

-- Create Table Students Grades

CREATE TABLE Students_Grades (
    RecordID   INT          NOT NULL,
    StudentID  VARCHAR(10)  NOT NULL,
    CourseID   VARCHAR(10)  NOT NULL,
    Department VARCHAR(20)  NOT NULL,
    ExamDate   DATE         NOT NULL,
    Grade      INT          NOT NULL,
    PRIMARY KEY (RecordID)
);

-- For the data set it has been uploaded from "table data import wizard option" instead of Insert
-- 1- Query the total number of records. 500
SELECT COUNT(*) AS total_records
FROM SQL_Aggregation.Students_Grades;

-- 2- Query the average grade of all students. 69.4200
SELECT AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades;

-- 3- Query the highest grade obtained. 100
SELECT MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades;

-- 4- Query the lowest grade obtained. 40
SELECT MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades;

-- 5- Query the number of distinct students. 99
SELECT COUNT(DISTINCT StudentID) AS distinct_students
FROM SQL_Aggregation.Students_Grades;

-- 6- Query the average grade for each course. 
SELECT CourseID, 
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

-- 7- Query the number of students in each department. AI = 73 , CS = 74 , IS = 78 , IT = 68
SELECT Department,
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

-- 8- Query the maximum grade for each course. 100
SELECT CourseID, 
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

-- 9- Query the minimum grade for each department. 40
SELECT Department, 
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

-- 10- Query the number of courses taken by each student.
SELECT StudentID, 
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID;

-- B- Intermediate Questions:
-- 11- Query courses where the average grade is greater than 75. 0
SELECT CourseID, 
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > 75;

-- 12- Query students who have taken more than 3 courses.
SELECT StudentID, 
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;

-- 13- Query departments where the average grade is less than 65. 0 
SELECT Department, 
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING AVG(Grade) < 65;

-- 14- Query students whose maximum grade is 100.
SELECT StudentID, 
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MAX(Grade) = 100;

-- 15- Query courses that have been taken by at least 20 students.
SELECT CourseID, 
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;

-- C- Advanced Questions:
-- 16- Query students who have taken at least 4 courses and whose average grade is greater than 80.
SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
AND AVG(Grade) > 80;

-- 17- Query departments where the maximum grade is at least twice the average grade. 0
SELECT Department, 
MAX(Grade) AS highest_grade, 
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);

-- 18- Query courses whose average grade is higher than the overall average grade.
SELECT CourseID, 
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > (SELECT AVG(Grade) FROM SQL_Aggregation.Students_Grades);

-- 19- Query students whose lowest grade is greater than 70.
SELECT StudentID, 
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;


