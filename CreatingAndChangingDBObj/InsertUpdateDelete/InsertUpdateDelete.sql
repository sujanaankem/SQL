-- Insert one row
INSERT INTO Students
VALUES (101, 'Rahul', 'SQL', 85);

-- Insert multiple rows
INSERT INTO Students
VALUES
(102, 'Priya', 'Java', 90),
(103, 'Kiran', 'Python', 88),
(104, 'Anjali', 'HTML', 92);

-- Update record
UPDATE Students
SET Marks = 95
WHERE StudentID = 101;

-- Delete record
DELETE FROM Students
WHERE StudentID = 104;