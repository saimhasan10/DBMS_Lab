ALTER TABLE student
DROP COLUMN CGPA;


-- JOIN ON 

SELECT std.Roll,exm.Registration_id, std.Name, std.Dept,exm.CGPA
FROM student AS std JOIN exam_result AS exm
ON std.Roll = exm.Roll;

-- INNER JOIN

SELECT std.Roll,exm.Registration_id, std.Name, std.Dept,exm.CGPA
FROM student AS std INNER JOIN exam_result AS exm
ON std.Roll = exm.Roll;

-- LEFT JOIN
SELECT std.Roll,exm.Registration_id, std.Name, std.Dept,exm.CGPA
FROM student AS std LEFT JOIN exam_result AS exm
ON std.Roll = exm.Roll;

-- RIGHT JOIN
SELECT std.Roll,exm.Registration_id, std.Name, std.Dept,exm.CGPA
FROM student AS std RIGHT JOIN exam_result AS exm
ON std.Roll = exm.Roll;
