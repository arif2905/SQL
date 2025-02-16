SELECT *
FROM parks_and_recreation.employee_demographics as table1
INNER JOIN parks_and_recreation.employee_salary as table2
	ON table1.employee_id = table2.employee_id
    ;

SELECT *
FROM parks_and_recreation.employee_demographics as table1
RIGHT JOIN parks_and_recreation.employee_salary as table2
	ON table1.employee_id = table2.employee_id
    ;
    
SELECT *
FROM parks_and_recreation.employee_demographics as table1
LEFT JOIN parks_and_recreation.employee_salary as table2
	ON table1.employee_id = table2.employee_id
    ;   
    

SELECT *
FROM parks_and_recreation.employee_demographics as table1
LEFT JOIN parks_and_recreation.employee_salary as table2
	ON table1.employee_id = table2.employee_id
    ;   
    
    


SELECT *
FROM parks_and_recreation.employee_demographics as table1
INNER JOIN parks_and_recreation.employee_salary as table2
	ON table1.employee_id = table2.employee_id
INNER JOIN parks_and_recreation.parks_departments as table3
	ON table2.dept_id = table3.department_id
    ;

    
    
    
    
    
    