CREATE PROCEDURE gradeDistribution() BEGIN
SELECT
    Name,
    ID
FROM
    Grades
WHERE
    Final >(Midterm1 + Midterm2) / 2
ORDER BY
    LEFT(Name, 3);

END --  The LEFT() function extracts a number of characters from a string (starting from left).