# Write your MySQL query statement below
/*Select(SELECT num
FROM MyNumbers
GROUP BY num
HAVING count(*) =1
ORDER BY num desc
LIMIT 1) as num;*/

SELECT MAX(t.num) as num
FROM (SELECT num
FROM MyNumbers
GROUP BY num
HAVING count(*) =1
ORDER BY num desc
LIMIT 1) T;


