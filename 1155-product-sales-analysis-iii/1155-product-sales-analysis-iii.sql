# Write your MySQL query statement below
SELECT s.product_id,T.first_year, s.quantity, s.price
FROM Sales s
LEFT JOIN 

(SELECT product_id, MIN(year)as first_year,quantity,price
FROM Sales
GROUP BY product_id) T
ON s.product_id=T.product_id
WHERE s.year=T.first_year