select case
    when Grades.Grade < 8 then 'NULL' 
    else Students.Name end 
, Grades.Grade, Students.Marks 
from Students, Grades 
where Students.Marks >= Grades.Min_mark and Students.Marks <= Grades.Max_mark 
order by Grades.Grade desc, Students.Name;