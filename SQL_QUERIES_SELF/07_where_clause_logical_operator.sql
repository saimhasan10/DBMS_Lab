/*
Apply WHERE with this
=
!=
>
<
>=
<=
BETWEEN
*/

SELECT Roll, Name, CGPA
FROM student
WHERE Roll = 101;


SELECT Roll, Name, CGPA
FROM student 
WHERE Roll != 102;

SELECT Roll, Name, CGPA
FROM student 
WHERE CGPA > 3.5;


SELECT Roll, Name, CGPA
FROM student 
WHERE CGPA < 3.5;

SELECT Roll, Name, CGPA
FROM student
WHERE Roll BETWEEN 102 AND 104;


------------- LOGICAL OPERATORS --------------------------------

/*
AND
OR
NOT
IN
NOT IN
LIKE 
*/

SELECT Roll, Name, CGPA
FROM student
WHERE Dept = 'CSE' AND CGPA > 3.5;

SELECT Roll, Name, CGPA
FROM student
WHERE Address IN ('khulna', 'Dhaka')

SELECT Roll, Name, CGPA
FROM student
WHERE Name LIKE 'A%'

SELECT Roll, Name, CGPA
FROM student
WHERE Roll NOT IN (101, 103, 105);
