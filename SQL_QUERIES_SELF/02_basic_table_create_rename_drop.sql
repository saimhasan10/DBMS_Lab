-- create table
CREATE TABLE students (
    Roll int,
    Name varchar(100),
    Age int(10),
    Dept varchar(50),
    CGPA double(3,2)
);

--Rename table
RENAME TABLE students TO students_details;

-- Drop table

DROP TABLE students_details;

-- Add new column
ALTER TABLE students_details ADD Address varchar(200);

