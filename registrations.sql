/*Create a table called "student_courses" that has the following attributes:

studentid, a foreign key to the student taking the course
course, a foreign key to the course they are taking
grade, a floating-point value that defaults to NULL when data is inserted*/

CREATE TABLE student_courses(
studentid INTEGER,
course INTEGER,
grade REAL,
FOREIGN KEY(studentid) REFERENCES students (id),
FOREIGN KEY(course) REFERENCES courses (code));

SELECT * FROM courses;

INSERT INTO student_courses
VALUES ((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), 
(SELECT code FROM courses WHERE code = 'INFO330A'), 3.7),
((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), 
(SELECT code FROM courses WHERE code = 'INFO448A'), 3.2),
((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), 
(SELECT code FROM courses WHERE code = 'INFO314'), 3.4),
((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), 
(SELECT code FROM courses WHERE code = 'INFO330A'), 3.9),
((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), 
(SELECT code FROM courses WHERE code = 'INFO449A'), 3.6),
((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), 
(SELECT code FROM courses WHERE code = 'BAW0100'), 3.3),
((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), 
(SELECT code FROM courses WHERE code = 'BAW100A'), 3.5),
((SELECT id FROM students WHERE firstname = 'Betty' AND lastname = 'Rubble'), 
(SELECT code FROM courses WHERE code = 'BAW0100'), 3.8);





