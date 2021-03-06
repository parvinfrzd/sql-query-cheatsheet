-- SELECT *
-- SELECT category_name, case_cost, proof
-- FROM products
-- WHERE pack > 12;
-- WHERE case_cost <= 70;
-- WHERE pack > 12 AND case_cost < 70;
-- WHERE CAST(proof as integer) > 85;
-- WHERE CAST(proof as integer) >= 85 OR category_name = 'SCOTCH WHISKIES';
-- WHERE category_name = 'SCOTCH WHISKEY' OR category_name = 'IRISH WHISKIES';
-- WHERE category_name IN ('SCOTCH WHISKEY', 'IRISH WHISKIES', 'IMPORTED VODKA');
-- WHERE case_cost BETWEEN 100 AND 150
-- WHERE category_name ILIKE '%whisk%'
-- WHERE category_name LIKE '%WHISK%'
-- WHERE category_name NOT ILIKE '%whisk%'

-- WHERE case_cost > 100
-- WHERE category_name ILIKE '%TEQUILA%' AND case_cost > 100
-- WHERE category_name IN ('SCOTCH WHISKEY', 'TEQUILA') AND case_cost > 100 --
-- WHERE category_name IN ('SCOTCH WHISKEY', 'TEQUILA') AND case_cost BETWEEN 100 AND 120
-- WHERE category_name ILIKE '%whisk%' AND case_cost > 100
-- WHERE category_name ILIKE '%whisk%' AND case_cost BETWEEN 100 AND 150

-- WHERE category_name NOT ILIKE '%teq%' AND case_cost BETWEEN 100 AND 12
-- WHERE (category_name ILIKE '%whisk%' AND case_cost > 100) OR CAST(proof AS integer) > 80

-- SELECT COUNT(*) as COUNTDAT, SUM(total) as SUMDAT
-- FROM sales

-- SELECT COUNT(*) as COUNTDAT, SUM(total) as SUMDAT, AVG(total) as AVDAT, MIN(total) as mindat, MAX(total) as maxdat
-- FROM sales

-- SELECT COUNT(*) as COUNTDAT, SUM(total) as SUMDAT, AVG(total) as AVDAT, MIN(total) as mindat, MAX(total) as maxdat
-- FROM sales
-- WHERE category_name ILIKE '%whisk%'
-- GROUP BY category_name

-- SELECT item_no item_description
-- FROM products
-- WHERE case_cost >= 100 AND pack >= 12

-- SELECT DISTINCT category_name, vendor_name
-- FROM products

-- SELECT * 
-- FROM products 
-- WHERE CAST(proof AS integer) > 85;

-- SELECT DISTINCT vendor_name
-- FROM products
-- WHERE category_name IN('PEACH BRANDIES','FLAVORED VODKA','FLAVORED RUM')

-- SELECT * 
-- FROM products
-- WHERE category_name ILIKE '%IMPORTED%'

SELECT vendor, sum(total) as SUMTOTAL, AVG(total) as averageTotal
FROM sales 
WHERE category_name ILIKE '%IMPORTED%'
GROUP BY vendor
HAVING SUM(total) > 1000000
ORDER BY averageTotal DESC
LIMIT 10




