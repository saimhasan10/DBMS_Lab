-- creating university database
CREATE DATABASE university;



-- creating students table
CREATE TABLE students(
	student_id int(5) PRIMARY KEY,
    student_name varchar(25),
    department varchar(20),
    year_of_study int(5),
    GPA double(3,2),
    phone_number int(11)
);

-- creating courses table

CREATE TABLE courses(
    course_id int(5) PRIMARY KEY,
    course_name varchar(30),
    course_code varchar(20),
    credits int(5),
    semester varchar(15)
    );

-- enrollment table

CREATE TABLE enrollment(
    enrollment_id int(5) PRIMARY KEY,
    student_id int(5),
    course_id int(5),
    grade varchar(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );

-- inserting sample data into students table

INSERT INTO students
VALUES 
(1, 'Alice Johnson', 'Computer Science', 3, 3.80, 1234567890),
(2, 'Bob Smith', 'Electrical Engineering', 2, 3.20, 9876543210),
(3, 'Charlie Brown', 'Mathematics', 4, 3.50, 5555555550),
(4, 'David Lee', 'Computer Science', 1, 3.90, 1112223330),
(5, 'Emily Wong', 'Biology', 2, 3.10, 7778889990);


-- inserting sample data into courses table

INSERT INTO courses
VALUES
(101, 'Introduction to Programming', 'CS101', 3, 'Spring'),
(102, 'Data Structures and Algorithms', 'CS102', 4, 'Fall'),
(201, 'Calculus I', 'MATH201', 4, 'Spring'),
(202, 'Linear Algebra', 'MATH202', 3, 'Fall'),
(301, 'Biology 101', 'BIO101', 3, 'Spring'),
(401, 'Database Systems', 'CS401', 3, 'Fall');

-- inserting sample data into enrollment table
INSERT INTO enrollment
VALUES
(1, 1, 101, 'A'),
(2, 2, 102, 'B+'),
(3, 3, 201, 'A-'),
(4, 4, 101, 'B'),
(5, 5, 301, 'C+'),
(6, 1, 401, 'A+');

