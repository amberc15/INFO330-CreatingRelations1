/*Create a table called "courses" that has the following attributes on it:

code, which needs to be a string limited to 40 characters and is a primary key
description, which needs to be a string limited to 400 characters
start, which needs to be a date
end, which needs to be a date
In addition, make sure the following constraints are enforced:

code can never be NULL and must be at least 7 characters long
start and end can never be NULL
the value of end for a given row must always be after start*/

--'YYYY-MM-DD' change dates to match the format
CREATE TABLE courses(
code TEXT (40) NOT NULL,
start TEXT NOT NULL,
end TEXT NOT NULL,
description TEXT(400),
PRIMARY KEY(code),
CHECK (length(code) >= 7),
CHECK (end > start));

INSERT INTO courses (code, start, end, description)
VALUES('INFO330A', '2023-04-01', '2023-06-01', 'Data and Databases'),
('INFO314', '2023-04-01', '2023-06-01', 'Networking and distributed Systems'),
('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS'),
('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android'),
('BAW0100', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving'),
('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');

SELECT * FROM courses;