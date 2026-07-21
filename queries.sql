PRAGMA foreign_keys = ON;

-- =========================================================
-- Task 4 : Query Set
-- =========================================================

-- ---------------------------------------------------------
-- Query 1: Using IN
-- Display students whose IDs are 1, 3, and 5.
-- ---------------------------------------------------------
SELECT *
FROM Students
WHERE student_id IN (1,3,5);


-- ---------------------------------------------------------
-- Query 2: Using BETWEEN
-- Display courses having credits between 3 and 4.
-- ---------------------------------------------------------
SELECT *
FROM Courses
WHERE credits BETWEEN 3 AND 4;


-- ---------------------------------------------------------
-- Query 3: Using IS NULL
-- Display students whose grade has not been assigned.
-- ---------------------------------------------------------
SELECT *
FROM Enrollments
WHERE grade IS NULL;


-- ---------------------------------------------------------
-- Query 4: GROUP BY with HAVING
-- Display courses having more than 1 enrolled student.
-- ---------------------------------------------------------
SELECT
course_id,
COUNT(*) AS Total_Students
FROM Enrollments
GROUP BY course_id
HAVING COUNT(*) > 1;


-- ---------------------------------------------------------
-- Query 5: INNER JOIN
-- Display student names along with course names.
-- ---------------------------------------------------------
SELECT
s.first_name,
s.last_name,
c.course_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id=e.student_id
INNER JOIN Courses c
ON e.course_id=c.course_id;


-- ---------------------------------------------------------
-- Query 6: LEFT JOIN
-- Display all students whether enrolled or not.
-- ---------------------------------------------------------
SELECT
s.student_id,
s.first_name,
c.course_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id=e.student_id
LEFT JOIN Courses c
ON e.course_id=c.course_id;


-- ---------------------------------------------------------
-- Query 7: CROSS JOIN
-- SQLite doesn't support RIGHT JOIN.
-- CROSS JOIN is used as the third join type.
-- ---------------------------------------------------------
SELECT
s.first_name,
c.course_name
FROM Students s
CROSS JOIN Courses c
LIMIT 10;


-- ---------------------------------------------------------
-- Query 8: Scalar Subquery
-- Display course having maximum credits.
-- ---------------------------------------------------------
SELECT *
FROM Courses
WHERE credits=
(
SELECT MAX(credits)
FROM Courses
);


-- ---------------------------------------------------------
-- Query 9: Correlated Subquery
-- Display students enrolled in at least one course.
-- ---------------------------------------------------------
SELECT *
FROM Students s
WHERE EXISTS
(
SELECT 1
FROM Enrollments e
WHERE e.student_id=s.student_id
);


-- ---------------------------------------------------------
-- Query 10: EXISTS
-- Display courses that have enrollments.
-- ---------------------------------------------------------
SELECT *
FROM Courses c
WHERE EXISTS
(
SELECT 1
FROM Enrollments e
WHERE e.course_id=c.course_id
);


-- ---------------------------------------------------------
-- Query 11: UNION
-- Display all first names and all course names in one list.
-- ---------------------------------------------------------
SELECT first_name AS Name
FROM Students

UNION

SELECT course_name
FROM Courses;


-- ---------------------------------------------------------
-- Query 12: Window Function (ROW_NUMBER)
-- Assign row numbers to students department-wise.
-- ---------------------------------------------------------
SELECT
student_id,
first_name,
department,
ROW_NUMBER() OVER(
PARTITION BY department
ORDER BY first_name
) AS Row_No
FROM Students;
