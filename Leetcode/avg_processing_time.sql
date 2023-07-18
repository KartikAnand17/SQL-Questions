-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

SELECT a1.machine_id ,
round(
(select avg(a2.timestamp) FROM Activity a2 WHERE a2.activity_type = 'end' and a2.machine_id = a1.machine_id) - 
(select avg(a2.timestamp) FROM Activity a2 WHERE a2.activity_type = 'start' and a2.machine_id = a1.machine_id),3) as processing_time
FROM Activity a1
GROUP BY a1.machine_id
