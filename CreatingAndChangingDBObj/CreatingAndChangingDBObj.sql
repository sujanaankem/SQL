/*=========================================
  1. CREATE TABLE
=========================================*/
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Course VARCHAR(50),
    Marks INT
);

/*=========================================
  2. ALTER TABLE
=========================================*/
ALTER TABLE Students
ADD Email VARCHAR(100);

/*=========================================
  3. INSERT SINGLE ROW
=========================================*/
INSERT INTO Students
VALUES (101, 'Rahul', 'SQL', 85, 'rahul@gmail.com');

/*=========================================
  4. INSERT MULTIPLE ROWS
=========================================*/
INSERT INTO Students
VALUES
(102, 'Priya', 'Java', 90, 'priya@gmail.com'),
(103, 'Kiran', 'Python', 88, 'kiran@gmail.com'),
(104, 'Anjali', 'HTML', 92, 'anjali@gmail.com'),
(105, 'Ravi', 'SQL', 95, 'ravi@gmail.com');

/*=========================================
  5. SELECT ALL COLUMNS
=========================================*/
SELECT *
FROM Students;

/*=========================================
  6. SELECT SPECIFIC COLUMNS
=========================================*/
SELECT StudentID, StudentName
FROM Students;

/*=========================================
  7. COLUMN ALIASES
=========================================*/
SELECT StudentName AS Name,
       Course AS Subject
FROM Students;

/*=========================================
  8. DISTINCT
=========================================*/
SELECT DISTINCT Course
FROM Students;

/*=========================================
  9. TOP
=========================================*/
SELECT TOP 3 *
FROM Students;

/*=========================================
  10. EXPRESSION
=========================================*/
SELECT StudentName,
       Marks + 5 AS MarksWithGrace
FROM Students;

/*=========================================
  11. CALCULATED COLUMN
=========================================*/
SELECT StudentName,
       Marks,
       Marks * 10 AS PercentageScore
FROM Students;

/*=========================================
  12. ALL CONCEPTS TOGETHER
=========================================*/
SELECT DISTINCT TOP 5
       StudentID,
       StudentName AS Name,
       Course AS Subject,
       Marks,
       Marks + 5 AS MarksWithGrace,
       Marks * 10 AS PercentageScore
FROM Students
ORDER BY Marks DESC;

/*=========================================
  13. UPDATE
=========================================*/
UPDATE Students
SET Marks = 98
WHERE StudentID = 105;

/*=========================================
  14. DELETE
=========================================*/
DELETE FROM Students
WHERE StudentID = 104;

/*=========================================
  15. CREATE TABLE USING EXISTING QUERY
=========================================*/
SELECT *
INTO Students_Backup
FROM Students;

/*=========================================
  16. VIEW BACKUP TABLE
=========================================*/
SELECT *
FROM Students_Backup;

/*=========================================
  17. TRUNCATE TABLE
=========================================*/
TRUNCATE TABLE Students;

/*=========================================
  18. DROP TABLES
=========================================*/
DROP TABLE Students;
DROP TABLE Students_Backup;