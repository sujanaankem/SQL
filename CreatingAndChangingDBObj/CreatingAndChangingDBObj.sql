-- Create table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Course VARCHAR(50)
);

-- Add column
ALTER TABLE Students
ADD Email VARCHAR(100);

-- Create backup table
SELECT *
INTO Students_Backup
FROM Students;

-- Remove all records
TRUNCATE TABLE Students;

-- Delete table permanently
DROP TABLE Students;