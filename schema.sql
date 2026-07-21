-- =========================================================
-- CampusConnect Database Schema
-- Database Engine: SQLite
-- =========================================================

PRAGMA foreign_keys = ON;

-- Drop tables if they already exist
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Students;

-- =========================================================
-- Students Table
-- =========================================================

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT NOT NULL UNIQUE,
    department TEXT NOT NULL,
    semester INTEGER NOT NULL CHECK(semester BETWEEN 1 AND 8)
);

-- =========================================================
-- Courses Table
-- =========================================================

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY NOT NULL,
    course_name TEXT NOT NULL,
    course_code TEXT NOT NULL UNIQUE,
    credits INTEGER NOT NULL CHECK(credits BETWEEN 1 AND 5),
    available_seats INTEGER NOT NULL CHECK(available_seats >= 0)
);

-- =========================================================
-- Enrollments Table
-- =========================================================

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY NOT NULL,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    grade TEXT DEFAULT NULL,

    FOREIGN KEY(student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY(course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
