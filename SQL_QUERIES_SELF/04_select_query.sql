-- basic select 
-- show all information
SELECT * FROM student;

-- show id and cgpa
SELECT Roll, cgpa FROM student;


-- find distinct values
SELECT DISTINCT(Age) FROM student;

-- select with limit
-- select first 3 rows
SELECT * FROM student LIMIT 3;
SELECT * FROM student LIMIT 1,3;
