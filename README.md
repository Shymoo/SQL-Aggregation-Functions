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

<img width="1224" height="787" alt="Screenshot 2026-11-20 at 21 11 24" src="https://github.com/user-attachments/assets/8861ab76-ced6-4c9b-b1ee-38e4e5ac5b31" />

Q1: Query the total number of records.

Q2: Query the average grade of all students.

Q3: Query the highest grade obtained.

<img width="1225" height="774" alt="Screenshot 2026-11-20 at 21 13 29" src="https://github.com/user-attachments/assets/7ded46a3-9eca-4ed7-830e-3bfbb20025cf" />

Q4: Query the lowest grade obtained.

Q5: Query the number of distinct students.

<img width="1224" height="797" alt="Screenshot 2026-11-20 at 21 14 00" src="https://github.com/user-attachments/assets/376def9f-69d9-43ec-90ee-b2b376163c7e" />

Q6: Query the average grade for each course.

Q7: Query the number of students in each department.

<img width="1227" height="795" alt="Screenshot 2026-11-20 at 21 14 25" src="https://github.com/user-attachments/assets/4e5fb794-e567-41cc-9e0e-b80df2d619a4" />

Q8: Query the maximum grade for each course.

Q9: Query the minimum grade for each department.

<img width="1220" height="790" alt="Screenshot 2026-11-20 at 21 14 50" src="https://github.com/user-attachments/assets/250b227c-32db-4f22-b36f-448f35e0b9d0" />

Q10: Query the number of courses taken by each student.

Q11: Query courses where the average grade is greater than 75.

Q12: Query students who have taken more than 3 courses.

<img width="1222" height="798" alt="Screenshot 2026-11-20 at 21 15 12" src="https://github.com/user-attachments/assets/30a25d8d-0295-4dbf-b7c2-d22b0ceb6086" />

Q13: Query departments where the average grade is less than 65.

Q14: Query students whose maximum grade is 100.

Q15: Query courses that have been taken by at least 20 students.

<img width="1222" height="788" alt="Screenshot 2026-11-20 at 21 15 40" src="https://github.com/user-attachments/assets/58c4f3d1-5b4a-47a6-be49-c1f7604b3d36" />

Q16: Query students who have taken at least 4 courses and whose average grade is greater than 80.

Q17: Query departments where the maximum grade is at least twice the average grade.
<img width="1224" height="793" alt="Screenshot 2026-11-20 at 21 16 02" src="https://github.com/user-attachments/assets/150c0fe9-74ec-4589-858e-b76b5d44eaa6" />

Q18: Query courses whose average grade is higher than the overall average grade.

Q19: Query students whose lowest grade is greater than 70.
<img width="1221" height="785" alt="Screenshot 2026-11-20 at 21 16 23" src="https://github.com/user-attachments/assets/d26d4db7-0c4d-4321-8ffc-60f23920c3c7" />


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
