-- https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50

SELECT p.project_id, ROUND(SUM(e.experience_years)/COUNT(project_id),2) AS average_years FROM Employee e
JOIN Project p 
ON e.employee_id = p.employee_id
GROUP BY project_id
