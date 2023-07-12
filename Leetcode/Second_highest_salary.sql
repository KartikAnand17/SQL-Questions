-- Problem Statement -> https://leetcode.com/problems/second-highest-salary/

Select max(salary) as SecondHighestSalary from Employee 
WHERE salary != (select max(salary) from Employee);
