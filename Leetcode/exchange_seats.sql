-- https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

SELECT CASE
        WHEN id=(SELECT MAX(id) FROM seat) AND id %2 != 0 THEN id
        WHEN id%2 = 0 THEN id-1
        WHEN id%2 !=0 THEN id+1
       END AS id, student
FROM seat 
ORDER BY id
