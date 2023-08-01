-- https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50

(SELECT u.name as results FROM MovieRating mr
JOIN Users u ON mr.user_id = u.user_id
GROUP BY mr.user_id
ORDER BY COUNT(mr.user_id) DESC, u.name LIMIT 1)
UNION ALL
(SELECT m.title AS results FROM movierating mr 
JOIN movies m
ON mr.movie_id = m.movie_id
WHERE month(mr.created_at)=02 and year(mr.created_at)=2020
GROUP BY mr.movie_id
ORDER BY avg(mr.rating) DESC, m.title
LIMIT 1)
