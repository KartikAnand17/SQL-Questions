-- https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50

ELETE p1 FROM Person p1, Person p2 
WHERE p1.Email = p2.Email AND p1.id > p2.id;
