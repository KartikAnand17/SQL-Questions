-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50

-- Using CTE and Window functions -> Better TC 

WITH CTE1 AS (
  SELECT person_id, person_name,weight,turn, SUM(weight) OVER (ORDER BY turn) as running_total
  FROM Queue
),
CTE2 AS (SELECT person_name, running_total, DENSE_RANK() OVER (ORDER BY running_total) AS rn FROM CTE1
WHERE running_total <= 1000)

SELECT person_name FROM CTE2 ORDER BY rn DESC LIMIT 1

-- Using subquery and Windown Function

SELECT person_name FROM (
SELECT person_id, person_name,weight,turn, SUM(weight) Over(ORDER BY turn) as total_weight FROM Queue ) a
WHERE total_weight <= 1000 ORDER BY turn DESC LIMIT 1
