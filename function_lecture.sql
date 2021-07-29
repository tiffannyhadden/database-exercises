#NOT LIKE
SELECT DISTINCT type from employees WHERE employees WHERE name NOT LIKE '%e%';
SELECT DISTINCT type from employees WHERE employees WHERE name NOT LIKE '%y';

#DATE
SELECT DAY('2002-06-09');
SELECT DAYOFMONTH('2002-06-09');
SELECT NOW();
SELECT CURTIME();
SELECT CURDATE();

SELECT name, CONCAT(name + ' was hired on ' + CURDATE()) FROM employees;

#UNIX TIMESTAMP- number of seconds since jan 1st 1978
SELECT