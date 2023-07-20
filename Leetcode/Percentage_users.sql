-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

SELECT contest_id, ROUND((COUNT(contest_id) / (SELECT COUNT(user_id) FROM Users)) * 100, 2) as percentage
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id
