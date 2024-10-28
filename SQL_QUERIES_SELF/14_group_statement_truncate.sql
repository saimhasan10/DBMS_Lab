-- group statement

SELECT Department, SUM(Salary)
FROM teacher
GROUP BY Department
ORDER BY SUM(Salary) DESC;

-- truncate statement

TRUNCATE TABLE teacher;

