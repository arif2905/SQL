SELECT 
first_name ,
last_name ,
'Old Man' AS Label
FROM parks_and_recreation.employee_demographics 
WHERE age > 40 AND gender = 'Male'

UNION ALL

SELECT 
first_name ,
last_name,
'Old Lady' AS Label
FROM parks_and_recreation.employee_demographics 
WHERE age > 40 AND gender = 'Female'
    ;

    
    
    
    
    
    