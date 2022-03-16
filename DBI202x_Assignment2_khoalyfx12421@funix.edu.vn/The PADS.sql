select concat(Name, '(', left(occupation,1),')') 
from OCCUPATIONS 
order by Name asc;
select concat('There are a total of ', count(Occupation),' ', lower(Occupation), 's.')
from OCCUPATIONS
GROUP BY Occupation
order by count(Occupation), Occupation asc