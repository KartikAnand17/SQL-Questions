-- https://leetcode.com/problems/customers-who-never-order/

SELECT c.name as Customers FROM Customers c LEFT JOIN Orders o ON c.id = o.customerID WHERE o.id IS null;
