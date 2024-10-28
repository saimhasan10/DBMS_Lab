-- AS 
SELECT Roll AS ID, Name AS first_Name 
FROM student;

-- constraints
/*
NOT NULL
UNIQUE
PRIMARY KEY
CHECK
DEFAULT
*/
CREATE TABLE teacher(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    department VARCHAR(25) NOT NULL,
    salary DECIMAL(4, 2) CHECK(salary > 0)
);

-- add primary key 
ALTER TABLE teacher ADD PRIMARY KEY (id);

-- INSERT DATA
INSERT INTO teacher (id, name, department, salary)
VALUES 
(101, 'Iron Man', 'Engineering', 9999.99),
(102, 'Captain America', 'History', 8500.50),
(103, 'Hulk', 'Physics', 9500.75),
(104, 'Black Widow', 'Security', 8900.00),
(105, 'Hawkeye', 'Sports', 7800.00),
(106, 'Thor', 'Mythology', 9200.50);