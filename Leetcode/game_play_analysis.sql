-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50
SELECT ROUND(COUNT(a2.player_id)/COUNT(a1.player_id),2) AS fraction
FROM
(SELECT player_id, MIN(event_date) AS first_login FROM Activity GROUP BY player_id) a1 
LEFT JOIN Activity a2
ON a1.player_id = a2.player_id AND DATEDIFF(a2.event_date, first_login) = 1
