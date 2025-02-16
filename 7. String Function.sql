
SELECT TRIM('      i     love       ');
SELECT RTRIM('      i     love       ');
SELECT LTRIM('      i     love       ');


SELECT 
	first_name,
    LENGTH(first_name) AS Length,
    UPPER(first_name) as Upper,
    LOWER(first_name) as Lower,
    LEFT(first_name , 2),
    RIGHT(first_name , 2),
    SUBSTRING(first_name , 2, 2),
    birth_date,
    SUBSTRING(birth_date , 6, 2) as Month,
    first_name,
    REPLACE (first_name, 'i','d'),
    LOCATE( 'a', first_name),
    first_name,
    last_name,
    CONCAT(first_name, ' ' , last_name)
    
    
    
    
FROM parks_and_recreation.employee_demographics
ORDER BY 
	 Length
     ;
     
     



