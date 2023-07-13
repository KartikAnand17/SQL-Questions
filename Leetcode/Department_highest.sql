-- https://leetcode.com/problems/department-highest-salary/description/

SELECT department.name as Department, employee.name as Employee, salary FROM Employee JOIN Department on Employee.departmentId = Department.id WHERE (departmentId,salary) IN
(Select departmentId,max(salary) as salary FROM Employee GROUP BY departmentId)
