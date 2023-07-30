-- https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50

SELECT "Low Salary" as category, count(*) as accounts_count FROM accounts WHERE income < 20000
UNION
SELECT "Average Salary" as category, count(*) as accounts_count FROM accounts
WHERE income>=20000 AND income<=50000
UNION
SELECT "High Salary" as category, count(*) as accounts_count FROM accounts WHERE income > 50000
