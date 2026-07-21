PRAGMA foreign_keys = ON;

-- =========================================================
-- transactions.sql
-- Demonstrates a transaction for course enrollment
-- =========================================================

BEGIN TRANSACTION;

-- Step 1: Reduce available seats by 1
UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 101
AND available_seats > 0;

-- Step 2: Enroll the student into the course
INSERT INTO Enrollments
(enrollment_id, student_id, course_id, enrollment_date, grade)
VALUES
(11, 2, 101, CURRENT_DATE, NULL);

-- Step 3: Save changes
COMMIT;

-- =========================================================
-- If any error occurs before COMMIT,
-- execute the following command:
--
-- ROLLBACK;
--
-- This ensures that no partial updates
-- are stored in the database.
-- =========================================================
