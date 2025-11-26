select std.student_id ,std.student_name, sub.subject_name ,count( ex.subject_name) as attended_exams
from Students std cross join Subjects sub 
left join Examinations ex 
on std.student_id =ex.student_id
and sub.subject_name =ex.subject_name
group by std.student_id,std.student_name , sub.subject_name
order by std.student_id,std.student_name,sub.subject_name
