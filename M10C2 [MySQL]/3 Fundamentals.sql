--SQL Hello world

SELECT "Hello World" AS COL1

--SQL +-*/
SELECT 2+2 AS COL 

SELECT 2-2 AS COL

--how to declare variable and assign value


SET @num1=10;
SET @num2=20;

SELECT @num1 AS COL 

--How to do math operation

SELECT 
@num1 + @num2 AS Addition


--Random Value

SELECT RAND() RandomValue

--Find Minimum

SELECT LEAST(@num1,@num2) AS MIN_VALUE

--Find max
SELECT GREATEST(@num1,@num2) AS MAX_VALUE

--PI

SELECT PI() AS PiValue