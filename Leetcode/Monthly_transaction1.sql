-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50

SELECT SUBSTR(trans_date,1,7) AS month, country, COUNT(*) AS trans_count, 
SUM(CASE WHEN state = 'approved' then 1 else 0 end) AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(CASE WHEN state = 'approved' then amount else 0 end) as approved_total_amount
FROM 
Transactions
GROUP BY month, country
