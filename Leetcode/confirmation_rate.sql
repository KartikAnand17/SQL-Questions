-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

select
s.user_id,
round(sum(case when action = 'confirmed' then 1 else 0 end) / count(1) , 2) as confirmation_rate
from Signups s left join Confirmations c on s.user_id = c.user_id
group by user_id;
