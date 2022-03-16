select (months*salary) M, count(months*salary) from Employee
where months*salary = (select max(months*salary) from Employee)
group by M