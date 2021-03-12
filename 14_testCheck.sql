CREATE PROCEDURE testCheck()
SELECT
    id,
    IF (
        STRCMP(correct_answer, given_answer) = 0,
        "correct",
        IF (given_answer IS NULL, "no answer", "incorrect")
    ) AS checks
FROM
    answers
ORDER BY
    id;