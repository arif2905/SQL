
WITH CTE_test AS
(
SELECT 
	gender , 
    AVG(salary) avg_salary,
    MAX(salary) max_salary,
    MIN(salary) min_salary,
    COUNT(salary) count_salary 
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)

SELECT AVG(avg_salary)
FROM CTE_test
;



WITH CTE_test1 AS
(
SELECT
	employee_id, gender ,birth_date
FROM parks_and_recreation.employee_demographics 
WHERE 
	birth_date > 1985-01-01
),
CTE_test2 AS
(
SELECT
	employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_test1
JOIN CTE_test2
	ON CTE_test1.employee_id = CTE_test2.employee_id
;

