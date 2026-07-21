# CampusConnect Database Management System

## Student Information

**Project Name:** CampusConnect Database

**Database:** SQLite

---

# Project Description

This project demonstrates the design and implementation of a relational database for a college management system called CampusConnect.

The database stores information about students, courses, and enrollments while maintaining data integrity using primary keys, foreign keys, constraints, indexes, and transactions.

---

# Database Tables

## Students

Stores student details.

Attributes:

- student_id
- first_name
- last_name
- email
- phone
- department
- semester

---

## Courses

Stores course details.

Attributes:

- course_id
- course_name
- course_code
- credits
- available_seats

---

## Enrollments

Stores enrollment records between students and courses.

Attributes:

- enrollment_id
- student_id
- course_id
- enrollment_date
- grade

---

# Normalization

## First Normal Form (1NF)

Each table contains atomic values.
No repeating groups are present.

## Second Normal Form (2NF)

All non-key attributes depend on the entire primary key.
There are no partial dependencies.

## Third Normal Form (3NF)

There are no transitive dependencies.
Each non-key attribute depends only on the primary key.

---

# Constraints Used

- Primary Key
- Foreign Key
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

These constraints ensure data accuracy and consistency.

---

# SQL Queries Included

The project contains examples of:

- IN
- BETWEEN
- IS NULL
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- CROSS JOIN (SQLite alternative)
- Scalar Subquery
- Correlated Subquery
- EXISTS
- UNION
- ROW_NUMBER() Window Function

---

# Indexing Justification

### idx_students_email

Improves searching students by email.

### idx_courses_code

Improves searching courses using course code.

### idx_enrollments_student_course

Composite index that improves enrollment searches based on both student_id and course_id.

Indexes reduce query execution time by avoiding full table scans.

---

# Transaction Explanation

The transaction demonstrates student enrollment.

Steps:

1. Reduce available seats.
2. Insert enrollment record.
3. Commit the transaction.

If any error occurs before COMMIT, the transaction is rolled back using ROLLBACK, preventing inconsistent data.

---

# Isolation Level

SQLite supports Serializable isolation by default.

This prevents problems such as:

- Dirty Read
- Lost Update
- Inconsistent Data

and ensures reliable transaction processing.

---

# Database Engine

SQLite

SQLite does not support RIGHT JOIN and FULL OUTER JOIN.

Therefore, CROSS JOIN has been used as an alternative demonstration of join operations.

---

# Files Included

- schema.sql
- sample_data.sql
- queries.sql
- indexing.sql
- transactions.sql
- README.md

---

# Author
Rishabh srivastava
