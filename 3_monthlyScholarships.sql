CREATE PROCEDURE monthlyScholarships() BEGIN
SELECT
    id,
    scholarship / 12
FROM
    scholarships;

END