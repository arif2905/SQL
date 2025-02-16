SELECT 
	gender,
    AVG(salary) as AVG_salary OVER()
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender


;

SELECT
	dem.first_name,
    dem.last_name
	gender,
    salary,
    sum(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id )
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;


SELECT
	dem.first_name,
    dem.last_name
	gender,
    salary,
    row_number() OVER(PARTITION BY  gender ORDER BY salary DESC) AS row_num,
    RANK() OVER(PARTITION BY  gender ORDER BY salary DESC) AS row_rank,
    DENSE_RANK() OVER(PARTITION BY  gender ORDER BY salary DESC) AS row_rank
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;