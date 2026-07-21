PRAGMA foreign_keys = ON;

-- =========================================================
-- indexing.sql
-- Purpose: Create indexes to improve query performance
-- =========================================================

-- ---------------------------------------------------------
-- Index 1
-- Speeds up searching students by email.
-- ---------------------------------------------------------
CREATE INDEX idx_students_email
ON Students(email);

-- ---------------------------------------------------------
-- Index 2
-- Speeds up searching courses by course code.
-- ---------------------------------------------------------
CREATE INDEX idx_courses_code
ON Courses(course_code);

-- ---------------------------------------------------------
-- Index 3 (Composite Index)
-- Speeds up queries that search enrollments
-- using both student_id and course_id.
-- ---------------------------------------------------------
CREATE INDEX idx_enrollments_student_course
ON Enrollments(student_id, course_id);
