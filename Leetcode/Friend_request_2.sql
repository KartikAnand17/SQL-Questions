-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50

SELECT id ,COUNT(*) AS num FROM 
(SELECT requester_id as id
FROM RequestAccepted 
UNION ALL
SELECT accepter_id as id
FROM RequestAccepted) a
GROUP BY id
ORDER BY num DESC
LIMIT 1
