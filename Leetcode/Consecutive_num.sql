-- https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50

-- Approach 1
SELECT DISTINCT(l1.num) AS ConsecutiveNums
FROM logs l1, logs l2, logs l3 
WHERE l1.id = l2.id+1 AND l2.id = l3.id + 1
AND l1.num = l2.num AND l2.num = l3.num

-- Approach 2 -> Using CTE and Lead
WITH CTE AS (
  SELECT num,
  lead(num,1) over() num1,
  lead(num,2) over() num2
  FROM logs
)

SELECT DISTINCT(num) AS ConsecutiveNums 
FROM CTE 
WHERE num = num1 AND  num1 = num2;

