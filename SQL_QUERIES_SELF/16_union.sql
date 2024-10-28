CREATE TABLE coxbazar_tour (
    roll INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL
);

INSERT INTO coxbazar_tour (roll, name, age, gender)
VALUES
(1, 'Mickey Mouse', 92, 'Male'),
(2, 'Minnie Mouse', 92, 'Female'),
(3, 'SpongeBob SquarePants', 25, 'Male'),
(4, 'Dora the Explorer', 10, 'Female'),
(5, 'Bart Simpson', 12, 'Male');

INSERT INTO sajek_tour (roll, name, age, gender)
VALUES
(6, 'Tom Cat', 10, 'Male'),
(7, 'Jerry Mouse', 9, 'Male'),
(3, 'SpongeBob SquarePants', 25, 'Male'),  -- Keeping roll 3
(9, 'Scooby-Doo', 8, 'Male'),
(5, 'Bart Simpson', 12, 'Male');  -- Keeping roll 5


--------------- union ----------------

SELECT roll, name, age, gender
FROM coxbazar_tour
UNION
SELECT roll, name, age, gender
FROM sajek_tour;


------------- union all ----------------

SELECT roll, name, age, gender
FROM coxbazar_tour
UNION ALL
SELECT roll, name, age, gender
FROM sajek_tour;
