CREATE PROCEDURE contestLeaderboard() BEGIN
SELECT
    name
FROM
    leaderboard
ORDER BY
    score DESC
LIMIT
    5 OFFSET 3;

END