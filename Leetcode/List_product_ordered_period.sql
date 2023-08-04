-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

  SELECT product_name, SUM(unit) as unit FROM Products p JOIN Orders o 
  ON p.product_id = o.product_id
  WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020
  GROUP BY product_name HAVING unit >= 100
