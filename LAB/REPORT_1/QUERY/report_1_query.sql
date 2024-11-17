
-- question 1: Count the number of students with a GPA of 3.5 or higher

SELECT COUNT(*) AS student_count
FROM students
WHERE GPA >= 3.5;

-- question 2: Calculate the average GPA of all students

SELECT AVG(GPA) AS average_gpa
FROM students;

-- question 3: Retrieve students from the Computer Science department

SELECT student_id, student_name, department, GPA
FROM students
WHERE department = 'Computer Science';


-- question 4: Find students whose names end with 'th'

SELECT student_id, student_name, department, GPA
FROM students
WHERE student_name LIKE '%th';
