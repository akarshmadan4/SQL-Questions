# Write your MySQL query statement below
SELECT ROUND(AVG(IF(d.order_date=d.
    customer_pref_delivery_date,1,0))*100,2) AS
     immediate_percentage
FROM Delivery d
LEFT JOIN 
(SELECT customer_id,MIN(order_date) as first_order_date
FROM Delivery
GROUP BY customer_id) f
ON d.customer_id=f.customer_id
WHERE f.first_order_date=d.order_date;