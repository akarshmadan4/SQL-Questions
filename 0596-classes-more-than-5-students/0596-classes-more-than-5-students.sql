# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
Having Count(class)>=5;