SELECT *
FROM parks_and_recreation.employee_demographics;


SELECT 
first_name, 
last_name, 
birth_date,
age,
age + 10 AS AGE	
FROM parks_and_recreation.employee_demographics;


SELECT 
DISTINCT gender
FROM parks_and_recreation.employee_demographics;
 
