# Write your MySQL query statement below
Select user_id,COUNT(distinct follower_id) as followers_count
FROM Followers
Group by user_id;