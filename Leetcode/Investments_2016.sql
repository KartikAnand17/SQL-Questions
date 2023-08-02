-- https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016 FROM (
SELECT *,
      COUNT(*) OVER (PARTITION BY tiv_2015) as tv_2015_cnt,
      COUNT(*) OVER (PARTITION BY lat,lon) as location_cnt
FROM Insurance) t
WHERE tv_2015_cnt > 1 AND location_cnt = 1
