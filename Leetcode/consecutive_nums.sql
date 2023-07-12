-- https://leetcode.com/problems/consecutive-numbers/

SELECT distinct(l1.num) as ConsecutiveNums FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id + 1 AND l1.num = l2.num
JOIN LOGS l3 ON l1.id = l3.id + 2 AND l1.num = l3.num
