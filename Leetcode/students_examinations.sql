-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

select s.student_id, student_name, su.subject_name, count(e.subject_name) as attended_exams 
from Students s 
join Subjects su 
left join Examinations e on s.student_id = e.student_id and su.subject_name = e.subject_name 
group by s.student_id, su.subject_name 
order by s.student_id, su.subject_name;
