PRAGMA foreign_keys = ON;

-- =========================================================
-- Sample Data for Students
-- =========================================================

INSERT INTO Students VALUES
(1,'Harshit','Kumar','harshit1@gmail.com','9876543210','CSE',4),
(2,'Aman','Singh','aman@gmail.com','9876543211','CSE',5),
(3,'Rahul','Verma','rahul@gmail.com','9876543212','IT',3),
(4,'Priya','Sharma','priya@gmail.com','9876543213','ECE',6),
(5,'Sneha','Gupta','sneha@gmail.com','9876543214','CSE',2),
(6,'Rohit','Yadav','rohit@gmail.com','9876543215','ME',7),
(7,'Neha','Patel','neha@gmail.com','9876543216','CE',8),
(8,'Karan','Mehta','karan@gmail.com','9876543217','EEE',1),
(9,'Anjali','Sinha','anjali@gmail.com','9876543218','IT',4),
(10,'Vikas','Raj','vikas@gmail.com','9876543219','CSE',5);

-- =========================================================
-- Sample Data for Courses
-- =========================================================

INSERT INTO Courses VALUES
(101,'Database Management System','DBMS101',4,30),
(102,'Operating System','OS102',4,25),
(103,'Computer Networks','CN103',3,20),
(104,'Data Structures','DS104',4,35),
(105,'Artificial Intelligence','AI105',3,15),
(106,'Machine Learning','ML106',4,20),
(107,'Software Engineering','SE107',3,40),
(108,'Web Development','WD108',2,50),
(109,'Cyber Security','CS109',3,18),
(110,'Cloud Computing','CC110',4,22);

-- =========================================================
-- Sample Data for Enrollments
-- =========================================================

INSERT INTO Enrollments
(enrollment_id,student_id,course_id,enrollment_date,grade)
VALUES
(1,1,101,'2026-01-10','A'),
(2,2,102,'2026-01-11','B'),
(3,3,103,'2026-01-12','A'),
(4,4,104,'2026-01-13','C'),
(5,5,105,'2026-01-14',NULL),
(6,6,106,'2026-01-15','B'),
(7,7,107,'2026-01-16','A'),
(8,8,108,'2026-01-17',NULL),
(9,9,109,'2026-01-18','A'),
(10,10,110,'2026-01-19','B');
