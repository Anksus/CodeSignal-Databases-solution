CREATE PROCEDURE newsSubscribers() BEGIN
/* The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
 
 */
SELECT
    subscriber
FROM
    full_year
WHERE
    newspaper LIKE '%Daily%'
UNION
SELECT
    subscriber
FROM
    half_year
WHERE
    newspaper LIKE '%Daily%'
ORDER BY
    subscriber;

END