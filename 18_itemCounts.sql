CREATE PROCEDURE itemCounts() BEGIN
SELECT
    item_name,
    item_type,
    COUNT(item_name) as item_count
FROM
    availableItems
GROUP BY
    item_type,
    item_name
ORDER BY
    item_type;

END