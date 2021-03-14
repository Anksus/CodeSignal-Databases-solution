CREATE PROCEDURE marketReport() BEGIN WITH temp AS (
    SELECT
        country,
        COUNT(country) as competitors
    FROM
        foreignCompetitors
    GROUP BY
        country
    ORDER BY
        country
)
SELECT
    *
FROM
    temp
UNION
ALL
SELECT
    "Total:" AS country,
    COUNT(country) as competitors
FROM
    foreignCompetitors;

END