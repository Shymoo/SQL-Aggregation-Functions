SQL Aggregation: Student Grades Analysis

A collection of SQL queries that practice core aggregation concepts (COUNT, AVG, MAX, MIN, GROUP BY, and HAVING) against a student grades dataset of 500 records.

Overview

This project contains a single SQL script that:

Creates a database called SQL_Aggregation.
Defines a Students_Grades table.
Runs 19 aggregation queries grouped into three difficulty levels: basic, intermediate, and advanced.

The dataset was loaded with the "Table Data Import Wizard" rather than INSERT statements.

Query Index
Basic Questions
#	Question	Key Functions
1	Total number of records	COUNT(*)
2	Average grade of all students	AVG()
3	Highest grade obtained	MAX()
4	Lowest grade obtained	MIN()
5	Number of distinct students	COUNT(DISTINCT)
6	Average grade for each course	AVG(), GROUP BY
7	Number of students in each department	COUNT(DISTINCT), GROUP BY
8	Maximum grade for each course	MAX(), GROUP BY
9	Minimum grade for each department	MIN(), GROUP BY
10	Number of courses taken by each student	COUNT(DISTINCT), GROUP BY
Intermediate Questions
#	Question	Key Functions
11	Courses with average grade greater than 75	HAVING AVG()
12	Students who have taken more than 3 courses	HAVING COUNT(DISTINCT)
13	Departments with average grade less than 65	HAVING AVG()
14	Students whose maximum grade is 100	HAVING MAX()
15	Courses taken by at least 20 students	HAVING COUNT(DISTINCT)
Advanced Questions
#	Question	Key Functions
16	Students with at least 4 courses and average grade above 80	Multiple conditions in HAVING
17	Departments where the maximum grade is at least twice the average	HAVING with arithmetic
18	Courses with average grade above the overall average	Subquery in HAVING
19	Students whose lowest grade is greater than 70	HAVING MIN()

Query Results
Creating the database and table

Creating the SQL_Aggregation database and Students_Grades table

Q1: Query the total number of records.
sql
SELECT COUNT(*) AS total_records
FROM SQL_Aggregation.Students_Grades;

Q1 query

Q2: Query the average grade of all students.
sql
SELECT AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades;

Q2 query

Q3: Query the highest grade obtained.
sql
SELECT MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades;

Q3 query

Q4: Query the lowest grade obtained.
sql
SELECT MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades;

Q4 query

Q5: Query the number of distinct students.
sql
SELECT COUNT(DISTINCT StudentID) AS distinct_students
FROM SQL_Aggregation.Students_Grades;

Q5 query

Q6: Query the average grade for each course.
sql
SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

Q6 result: average grade for each course

Q7: Query the number of students in each department.
sql
SELECT Department,
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

Q7 query

Q8: Query the maximum grade for each course.
sql
SELECT CourseID,
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

Q8 query

Q9: Query the minimum grade for each department.
sql
SELECT Department,
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

Q9 query

Q10: Query the number of courses taken by each student.
sql
SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID;

Q10 query

Q11: Query courses where the average grade is greater than 75.
sql
SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > 75;

Q11 query

Q12: Query students who have taken more than 3 courses.
sql
SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;

Q12 query

Q13: Query departments where the average grade is less than 65.
sql
SELECT Department,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING AVG(Grade) < 65;

Q13 query

Q14: Query students whose maximum grade is 100.
sql
SELECT StudentID,
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MAX(Grade) = 100;

Q14 query

Q15: Query courses that have been taken by at least 20 students.
sql
SELECT CourseID,
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;

Q15 query

Q16: Query students who have taken at least 4 courses and whose average grade is greater than 80.
sql
SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
AND AVG(Grade) > 80;

Q16 query

Q17: Query departments where the maximum grade is at least twice the average grade.
sql
SELECT Department,
MAX(Grade) AS highest_grade,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);

Q17 query

Q18: Query courses whose average grade is higher than the overall average grade.
sql
SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > (SELECT AVG(Grade) FROM SQL_Aggregation.Students_Grades);

Q18 query

Q19: Query students whose lowest grade is greater than 70.
sql
SELECT StudentID,
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;

Q19 query

Key Concepts
Aggregate functions collapse many rows into one value: COUNT, SUM, AVG, MIN, MAX.
GROUP BY splits rows into groups so that aggregates are calculated per group.
WHERE vs HAVING: WHERE filters individual rows before grouping. HAVING filters groups after aggregation.
COUNT(DISTINCT column) counts unique values. It is used here because a student can have many rows (one per exam).
Scalar subqueries can be used inside HAVING to compare a group against a value computed over the whole table (Query 18).
Project Structure
SQL_Aggregation/
├── README.md
└── SQL_Aggregation.sql
