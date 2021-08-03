CREATE database if not exists join_test_db;
use join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('tiffy', 'tiffanny.hadden@gmail.com', 1),
       ('charles', 'charles@gmail.com', 2),
       ('sydney', 'sydneyi@gmail.com', 3),
       ('wallen', 'wallen@gmail.com', null);

SELECT * FROM users;

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
JOIN roles as r
ON r.id = u.role_id;

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
LEFT JOIN roles as r
ON r.id = u.role_id;

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
RIGHT JOIN roles as r
ON r.id = u.role_id;

SELECT COUNT(r.name) as Number_of_role, r.name
FROM roles as r
LEFT JOIN users as u
ON r.id = u.role_id
GROUP BY r.name;


USE employees;
# Using the example in the Associative Table Joins section as a guide, write a query that shows each
# department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%' AND e.gender = 'F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
JOIN dept_emp as de
ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND YEAR(t.to_date) = '9999' AND YEAR(de.to_date) = '9999'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%'
ORDER BY dept_name;

