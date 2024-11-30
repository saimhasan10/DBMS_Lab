-- 1. List all students in the Computer Science department
SELECT student_id, student_name, department, GPA
FROM students
WHERE department = 'Computer Science';


-- 2. Find students who are either in the Computer Science or Electrical Engineering department
SELECT student_id, student_name, department, GPA
FROM students
WHERE department IN ('Computer Science', 'Electrical Engineering');


-- 3. Find students who are not in the Mathematics department and have a GPA greater than 3.5
SELECT student_id, student_name, department, GPA
FROM students
WHERE department != 'Mathematics' AND GPA > 3.5;

-- 4. Find students who are either in the Computer Science department or have a GPA greater than 3.0
SELECT student_id, student_name, department, GPA
FROM students
WHERE department = 'Computer Science' OR GPA > 3.0;

-- 5. Find students who are not in the Mathematics department and do not have a GPA less than  2.5
SELECT student_id, student_name, department, GPA
FROM students
WHERE department != 'Mathematics' AND GPA >= 2.5;

-- 6. Find the average grade for the course "Database Systems"
SELECT AVG(grade) AS average_grade
FROM enrollment
JOIN courses ON enrollment.course_id = courses.course_id
WHERE courses.course_name = 'Database Systems';

-- 7. List all courses offered by the Engineering department
SELECT course_id, course_name, course_code, credits, semester
FROM courses
WHERE course_code LIKE 'CS%' OR course_code LIKE 'EE%';  

-- 8. List the names of students enrolled in the "Data Structures" course
SELECT students.student_name
FROM enrollment
JOIN courses ON enrollment.course_id = courses.course_id
JOIN students ON enrollment.student_id = students.student_id
WHERE courses.course_name = 'Data Structures';

-- 9. Find the average grade for each course
SELECT courses.course_name, AVG(enrollment.grade) AS average_grade
FROM enrollment
JOIN courses ON enrollment.course_id = courses.course_id
GROUP BY courses.course_name;

-- 10. List all students whose names start with "A"
SELECT student_id, student_name, department, GPA
FROM students
WHERE student_name LIKE 'A%';

-- 11. Find all courses that contain the word "database"
SELECT course_id, course_name, course_code, credits, semester
FROM courses
WHERE course_name LIKE '%database%';
