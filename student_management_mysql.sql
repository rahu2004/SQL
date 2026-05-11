
-- CREATE STUDENTS TABLE

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- CREATE COURSES TABLE

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_name VARCHAR(100)
);

-- CREATE ENROLLMENTS TABLE

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);

-- INSERT STUDENT DATA

INSERT INTO Students VALUES
(1, 'Rahul', 'AI', 21, 'Chennai'),
(2, 'Kiran', 'Data Science', 22, 'Hyderabad'),
(3, 'Anjali', 'Cyber Security', 20, 'Bangalore'),
(4, 'Rohit', 'AI', 23, 'Mumbai');

-- INSERT COURSE DATA

INSERT INTO Courses VALUES
(101, 'Machine Learning', 'Dr. Kumar'),
(102, 'Data Analytics', 'Dr. Priya'),
(103, 'Cloud Computing', 'Dr. Sharma');


-- INSERT ENROLLMENT DATA

INSERT INTO Enrollments VALUES
(1, 1, 101, 90),
(2, 2, 102, 85),
(3, 3, 103, 88),
(4, 4, 101, 95);

