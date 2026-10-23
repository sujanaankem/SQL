-- Create Tables

CREATE TABLE SQL_Students (
    StudentID INT,
    StudentName VARCHAR(50)
);

CREATE TABLE Python_Students (
    StudentID INT,
    StudentName VARCHAR(50)
);

-- Insert Data

INSERT INTO SQL_Students VALUES
(1, 'John'),
(2, 'Sara'),
(3, 'David'),
(4, 'Mike');

INSERT INTO Python_Students VALUES
(3, 'David'),
(4, 'Mike'),
(5, 'Jenny'),
(6, 'Alex');

-- UNION

SELECT StudentName
FROM SQL_Students

UNION

SELECT StudentName
FROM Python_Students;

-- INTERSECT

SELECT StudentName
FROM SQL_Students

INTERSECT

SELECT StudentName
FROM Python_Students;

-- EXCEPT

SELECT StudentName
FROM SQL_Students

EXCEPT

SELECT StudentName
FROM Python_Students;