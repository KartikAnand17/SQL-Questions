// https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
SELECT employee_id, name, COUNT(employee_id) as reports_count, ROUND(AVG(age)) as average_age FROM(
SELECT e1.employee_id, e1.name,e2.age 
FROM Employees e1 JOIN Employees e2 
ON e1.employee_id = e2.reports_to) a
GROUP BY employee_id
ORDER BY employee_id
