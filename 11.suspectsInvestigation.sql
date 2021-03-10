CREATE PROCEDURE suspectsInvestigation() BEGIN
/* The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
 WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
 WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
 WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
 WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
 WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
 WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
 WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"
 */
SELECT
    id,
    name,
    surname
FROM
    Suspect AS temp
WHERE
    temp.height <= 170
    AND name LIKE "b%"
    AND surname LIKE "gre_n";

END