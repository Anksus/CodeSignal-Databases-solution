CREATE PROCEDURE expressionsVerification() BEGIN
/* The CASE statement goes through conditions and returns a value when the first condition is met 
 (like an if-then-else statement).So, once a condition is true, it will stop reading and return
 the result. If no conditions are true, it returns the value in the ELSE clause. If there is no
 ELSE part and no conditions are true, it returns NULL.
 
 --  CASE
 --  WHEN condition1 THEN result1
 --  WHEN condition2 THEN result2
 --  WHEN conditionN THEN resultN
 --  ELSE result
 --  END;
 
 */
SELECT
    *
FROM
    expressions
WHERE
    CASE
        operation
        WHEN "+" THEN a + b = c
        WHEN "*" THEN a * b = c
        WHEN "/" THEN a / b = c
        WHEN "-" THEN a - b = c
    END;

END