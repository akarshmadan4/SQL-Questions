# Write your MySQL query statement below
Select activity_date as day,Count(distinct user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27',interval 29 DAY)
    AND '2019-07-27'
Group by activity_date