SELECT * 
FROM sales as a JOIN products as b
ON a.item = b.item_no
LIMIT 10

SELECT *
FROM sales as a RIGHT JOIN  stores as b
ON a.store = b.store
WHERE a.total  ISNULL


SELECT b.name, AVG(a.total)
FROM sales as a  INNER JOIN stores as b
on a.store = b.store
WHERE b.name ILIKE '%wal-mart%' and (a.category_name = 'TEQUILA' or a.category_name ILIKE '%whisk%')
GROUP BY b.name
ORDER BY 2 DESC

SELECT *
FROM sales as a JOIN stores as b
USING (store)
WHERE b.store_status = 'I'
SELECT *
FROM sales as a INNER JOIN products as b
ON a.item = b.item_no
WHERE b.category_name = 'TEQUILA'

SELECT *
FROM sales as a RIGHT JOIN products as b
ON a.item = b.item_no
WHERE a.item  ISNULL and b.category_name = 'TEQUILA'

SELECT DISTINCT a.category_name
FROM sales as a INNER JOIN stores as b
ON a.store = b.store
WHERE b.store_address ILIKE '%mason city%'

SELECT *
FROM sales as a INNER JOIN stores as b
ON a.store = b.store
WHERE b.store_address ILIKE '%mason city%' and a.category_name = 'SCOTCH WHISKIES'

SELECT DISTINCT a.item
FROM sales as a INNER JOIN stores as b
ON a.store = b.store
WHERE b.store_address ILIKE '%mason city%' and a.category_name NOT ILIKE '%whisk%'

SELECT *
FROM sales as a LEFT JOIN products as b
ON a.item = b.item_no
WHERE b.item_no ISNULL

SELECT *
FROM sales as a LEFT JOIN stores as b
USING (store)
WHERE b.store ISNULL
