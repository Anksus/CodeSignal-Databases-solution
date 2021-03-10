CREATE PROCEDURE mischievousNephews() BEGIN
/* The FIELD() function returns the index position of a value in a list of values. */
SELECT
    WEEKDAY(mischief_date) as weekday,
    mischief_date,
    author,
    title
FROM
    mischief
ORDER BY
    weekday,
    Field(author, 'Huey', 'Dewey', 'Louie'),
    mischief_date,
    title;

END