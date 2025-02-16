SELECT 
	first_name,
    last_name,
    CASE
		WHEN age <= 30 THEN 'YOUNG'
        WHEN age BETWEEN 31 AND 50 THEN 'OLD'
        WHEN age >= 50 THEN 'DEATH'
	END AS Status
FROM parks_and_recreation.employee_demographics;



SELECT
	first_name,
    last_name,
    salary,
    CASE
		WHEN salary < 50000 THEN salary*0.05
        WHEN salary >= 50000 THEN salary*0.07
	END AS Bonus1,
    CASE
		WHEN dept_id = 6 THEN salary* 0.1
    END AS BONUS2
    
FROM parks_and_recreation.employee_salary;