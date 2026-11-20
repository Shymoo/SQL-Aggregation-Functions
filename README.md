### SQL Aggregation: Student Grades Analysis

A collection of SQL queries that practice core aggregation concepts (COUNT, AVG, MAX, MIN, GROUP BY, and HAVING) against a student grades dataset of 500 records.

## Overview

This project contains a single SQL script that:

Creates a database called SQL_Aggregation.
Defines a Students_Grades table.
Runs 19 aggregation queries grouped into three difficulty levels: basic, intermediate, and advanced.

The dataset was loaded with the "Table Data Import Wizard" rather than INSERT statements.


## Basic Questions
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
## Intermediate Questions
11	Courses with average grade greater than 75	HAVING AVG()
12	Students who have taken more than 3 courses	HAVING COUNT(DISTINCT)
13	Departments with average grade less than 65	HAVING AVG()
14	Students whose maximum grade is 100	HAVING MAX()
15	Courses taken by at least 20 students	HAVING COUNT(DISTINCT)
## Advanced Questions
16	Students with at least 4 courses and average grade above 80	Multiple conditions in HAVING
17	Departments where the maximum grade is at least twice the average	HAVING with arithmetic
18	Courses with average grade above the overall average	Subquery in HAVING
19	Students whose lowest grade is greater than 70	HAVING MIN()

## Query Results
Creating the database and table

Creating the SQL_Aggregation database and Students_Grades table

Q1: Query the total number of records.

SELECT COUNT(*) AS total_records
FROM SQL_Aggregation.Students_Grades;


<img width="1224" height="787" alt="Screenshot 2026-11-20 at 21 11 24" src="https://github.com/user-attachments/assets/f98b9551-e9b6-47b1-9fda-290c83a5e571" />


Q2: Query the average grade of all students.

SELECT AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades;


<img width="1225" height="774" alt="Screenshot 2026-11-20 at 21 13 29" src="https://github.com/user-attachments/assets/2b15e045-8d27-4597-937a-431aee694278" />


Q3: Query the highest grade obtained.

SELECT MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades;


<img width="1225" height="774" alt="Screenshot 2026-11-20 at 21 13 29" src="https://github.com/user-attachments/assets/de594496-977c-4f59-b7f1-433341bc767f" />


Q4: Query the lowest grade obtained.

SELECT MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades;


Q5: Query the number of distinct students.

SELECT COUNT(DISTINCT StudentID) AS distinct_students
FROM SQL_Aggregation.Students_Grades;

<img width="1220" height="770" alt="Screenshot 2026-11-20 at 21 09 09" src="https://github.com/user-attachments/assets/e4131047-2a42-43c5-98b4-c286876f96b6" />


Q6: Query the average grade for each course.

SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

<img width="1220" height="770" alt="Screenshot 2026-11-20 at 21 09 09" src="https://github.com/user-attachments/assets/599240c7-2d5c-4adf-b3af-c4f6eaa1ea22" />


Q7: Query the number of students in each department.

SELECT Department,
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

<img width="1224" height="797" alt="Screenshot 2026-11-20 at 21 14 00" src="https://github.com/user-attachments/assets/26e514dd-b9dc-432c-8a0c-05fcfec2c3e7" />


Q8: Query the maximum grade for each course.

SELECT CourseID,
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID;

<img width="1224" height="797" alt="Screenshot 2026-11-20 at 21 14 00" src="https://github.com/user-attachments/assets/725c1e0f-4f3e-48e9-9ef6-d9066f9b1ba8" />


Q9: Query the minimum grade for each department.

SELECT Department,
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department;

<img width="1227" height="795" alt="Screenshot 2026-11-20 at 21 14 25" src="https://github.com/user-attachments/assets/9976d2f0-d98c-478e-b7a9-c66dc0f0c8d3" />


Q10: Query the number of courses taken by each student.

SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID;

<img width="1227" height="795" alt="Screenshot 2026-11-20 at 21 14 25" src="https://github.com/user-attachments/assets/32ea7ca6-687a-4fe4-b088-39774d319968" />


Q11: Query courses where the average grade is greater than 75.

SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > 75;

<img width="1220" height="790" alt="Screenshot 2026-11-20 at 21 14 50" src="https://github.com/user-attachments/assets/859ff957-a666-4091-a7a2-bdd9357306c9" />


Q12: Query students who have taken more than 3 courses.

SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;

<img width="1220" height="790" alt="Screenshot 2026-11-20 at 21 14 50" src="https://github.com/user-attachments/assets/6162f811-4055-4e7f-97db-4fd05cded8a0" />


Q13: Query departments where the average grade is less than 65.

SELECT Department,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING AVG(Grade) < 65;

<img width="1222" height="798" alt="Screenshot 2026-11-20 at 21 15 12" src="https://github.com/user-attachments/assets/73a14e43-de7d-4646-a47f-6c2f3f2a1c5f" />


Q14: Query students whose maximum grade is 100.

SELECT StudentID,
MAX(Grade) AS highest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MAX(Grade) = 100;

<img width="1222" height="798" alt="Screenshot 2026-11-20 at 21 15 12" src="https://github.com/user-attachments/assets/e6d96e20-4aa4-4d53-80a1-cef8d03d422a" />


Q15: Query courses that have been taken by at least 20 students.

SELECT CourseID,
COUNT(DISTINCT StudentID) AS total_students
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;

<img width="1222" height="788" alt="Screenshot 2026-11-20 at 21 15 40" src="https://github.com/user-attachments/assets/235a7c04-ac0a-4ef0-8d3a-a7c87b697030" />


Q16: Query students who have taken at least 4 courses and whose average grade is greater than 80.

SELECT StudentID,
COUNT(DISTINCT CourseID) AS courses_taken,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
AND AVG(Grade) > 80;

<img width="1222" height="788" alt="Screenshot 2026-11-20 at 21 15 40" src="https://github.com/user-attachments/assets/a266f5e7-c594-48d4-8265-9ba93851e84e" />


Q17: Query departments where the maximum grade is at least twice the average grade.

SELECT Department,
MAX(Grade) AS highest_grade,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);

<img width="1224" height="793" alt="Screenshot 2026-11-20 at 21 16 02" src="https://github.com/user-attachments/assets/3dac539c-ad7a-4d8f-9020-0cac613b5e77" />


Q18: Query courses whose average grade is higher than the overall average grade.

SELECT CourseID,
AVG(Grade) AS average_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY CourseID
HAVING AVG(Grade) > (SELECT AVG(Grade) FROM SQL_Aggregation.Students_Grades);

<img width="1224" height="793" alt="Screenshot 2026-11-20 at 21 16 02" src="https://github.com/user-attachments/assets/94031c3a-1b00-44ed-bc73-6d7c7af8e6e1" />


Q19: Query students whose lowest grade is greater than 70.

SELECT StudentID,
MIN(Grade) AS lowest_grade
FROM SQL_Aggregation.Students_Grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;

<img width="1221" height="785" alt="Screenshot 2026-11-20 at 21 16 23" src="https://github.com/user-attachments/assets/c8c215bc-1093-440e-bb8f-f3d4dd830eb2" />


## Key Concepts
- Aggregate functions collapse many rows into one value: COUNT, SUM, AVG, MIN, MAX.
- GROUP BY splits rows into groups so that aggregates are calculated per group.
- WHERE vs HAVING: WHERE filters individual rows before grouping. HAVING filters groups after aggregation.
- COUNT(DISTINCT column) counts unique values. It is used here because a student can have many rows (one per exam).
- Scalar subqueries can be used inside HAVING to compare a group against a value computed over the whole table (Query 18).


## Project Structure
SQL_Aggregation/
├── README.md
└── SQL_Aggregation.sql
