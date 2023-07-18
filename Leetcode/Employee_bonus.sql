-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

SELECT name, bonus 
FROM Employee e 
LEFT JOIN Bonus b 
ON e.empId = b.empId 
WHERE bonus IS NULL OR bonus < 1000;
