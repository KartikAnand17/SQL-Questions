-- https://leetcode.com/problems/department-top-three-salaries/description/?envType=study-plan-v2&envId=top-sql-50

SELECT Department, Employee, Salary FROM (
  SELECT e.name as Employee, d.name as Department, salary, 
        DENSE_RANK() OVER(PARTITION BY d.name ORDER BY Salary DESC) AS ranking 
        FROM Employee e JOIN Department d ON e.departmentId = d.id) a
WHERE ranking <= 3
