CREATE PROCEDURE projectsTeam() BEGIN
SELECT
    DISTINCT name
FROM
    projectLog
ORDER BY
    name ASC;

END