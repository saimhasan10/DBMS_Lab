-- concatinaiton
SELECT CONCAT('FIRST PART ', ' SECOND PART')
SELECT CONCAT(Name, ' is ', Age, ' years old') FROM student;


-- GREATEST
SELECT GREATEST(1000, 2000, 3000);  -- Returns 3000
SELECT LEAST(100, 200, 300);

SELECT MAX(Salary) FROM teacher;
SELECT MIN(Salary) FROM teacher;


-- POW
SELECT POW(2, 3);

-- TRUNCATE
SELECT TRUNCATE(123.4596, 2);  -- Returns 123.45


-- ROUND
SELECT ROUND(123.456, 2);  -- Returns 123.46

-- RAND

SELECT RAND(); 

-- AVERAGE
SELECT AVG(Salary) FROM teacher;

-- SUM
SELECT SUM(Salary) FROM teacher;

-- COUNT
SELECT COUNT(*) FROM teacher;

