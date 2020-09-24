SELECT
    *
FROM
    employees
WHERE
    first_name LIKE('Mark%');
 
   SELECT
    *
FROM
    employees
WHERE
    first_name LIKE ('%JACK%');

SELECT
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');