-- Method 1:single record insert 
INSERT INTO student(Roll, Name, Age, Dept, CGPA, Address) 
VALUES (101, 'MR. BEAN', 23, 'CSE', 3.50, 'kHULNA'); 


-- Method 2: single record insert 
INSERT INTO student
VALUES (101, 'MR. BEAN', 23, 'CSE', 3.50, 'kHULNA'); 


-- Method 3: multiple record insert 
INSERT INTO student VALUES 
(101, 'MR. BEAN', 23, 'CSE', 3.50, 'kHULNA'), 
(102, 'JHON CENA', 22, 'CSE', 3.60, 'BARISAL'), 
(103, 'TOM', 21, 'CIVIL', 3.44, 'DHAKA'), 
(104, 'ROCK', 22, 'EEE', 3.23, 'RAJSHAHI');  



