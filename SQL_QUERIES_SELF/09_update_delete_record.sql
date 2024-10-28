-- modify column
ALTER TABLE teacher
MODIFY COLUMN salary DECIMAL(10, 2) CHECK(salary > 0);


-- update record
UPDATE teacher
SET salary = 15000.00
WHERE id = 10001;


-- delete record
DELETE FROM teacher
WHERE id = 10007;


