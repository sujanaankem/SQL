CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);

INSERT INTO Students VALUES
(101, 'Ramesh', 'Java', 85),
(102, 'Sita', 'Python', 90),
(103, 'Rahul', 'SQL', 88);

-- Select All Columns
SELECT * FROM Students;

-- Select Specific Columns
SELECT StudentName, Course
FROM Students;

-- Column Aliases
SELECT
    StudentName AS Name,
    Course AS Student_Course,
    Marks AS Total_Marks
FROM Students;