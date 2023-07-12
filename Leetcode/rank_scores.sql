-- https://leetcode.com/problems/rank-scores/

SELECT score, dense_rank() over (order by score desc) as "rank" FROM Scores;
