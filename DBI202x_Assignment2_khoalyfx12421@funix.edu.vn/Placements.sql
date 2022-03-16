select name from Students
join Friends on Friends.ID = Students.ID
join Packages P1 on P1.ID = Students.ID
join Packages P2 on P2.ID = Friends.Friend_ID
where P2.salary > P1.salary
order by P2.salary;     