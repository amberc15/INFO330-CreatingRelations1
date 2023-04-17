/*Create a table called "students" that has the following attributes:
id, which needs to be an integer primary key
firstname, which needs to be a string type limited to 40 characters
lastname, which needs to be a string type limited to 80 characters
age, which needs to be a numeric type*/

CREATE TABLE students (
id INTEGER,
firstname TEXT(40),
lastname TEXT(80),
age INTEGER,
PRIMARY KEY(id)
) ;



SELECT * FROM students;

INSERT INTO students (firstname, lastname, age)
VALUES
( 'Fred', 'Flintstone', 35),
('Wilma', 'Flintstone', 29),
( 'Barney', 'Rubble', 33),
( 'Betty', 'Rubble', 29),
( 'Pebbles', 'Flintstone', 1),
( 'Bam-Bam', 'Rubble', 1),
( 'May', 'Brickstone', 14),
( 'August', 'Brickstone', 16),
( 'Leo',  'Cavewatcher', 16),
( 'Sam', 'Cavewatcher', 12);