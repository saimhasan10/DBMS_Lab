-- add 
ALTER TABLE teacher
ADD Age int(5);

-- rename
ALTER TABLE teacher CHANGE Age AGE INT;

-- MODIFY
ALTER TABLE teacher MODIFY COLUMN Age INT;

-- delete

ALTER TABLE teacher
DROP COLUMN Age;