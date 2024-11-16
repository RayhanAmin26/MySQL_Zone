

SELECT COUNT(*) FROM employees

SELECT SUM(salary) FROM employees

SELECT AVG(salary) FROM employees

SELECT MIN(salary) FROM employees

SELECT MAX(salary) FROM employees

SELECT  *FROM  employees GROUP BY designation

SELECT * FROM employees GROUP BY designation HAVING SUM(salary)>20000

