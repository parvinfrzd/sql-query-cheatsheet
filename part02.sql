-- SELECT * 

-- FROM sales as a JOIN products as b
-- ON a.item = b.item_no
-- LIMIT 10

-- SELECT *
-- FROM sales as a RIGHT JOIN  stores as b
-- ON a.store = b.store
-- WHERE a.total  ISNULL


SELECT b.name, AVG(a.total)
FROM sales as a  INNER JOIN stores as b
on a.store = b.store
WHERE b.name ILIKE '%wal-mart%' and (a.category_name = 'TEQUILA' or a.category_name ILIKE '%whisk%')
GROUP BY b.name
ORDER BY 2 DESC
