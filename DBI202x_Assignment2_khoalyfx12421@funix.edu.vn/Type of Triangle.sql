select case
when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
when A = B and B = C then 'Equilateral'
WHEN A = B or B = C or A = C then 'Isosceles'
else 'Scalene'
end
from TRIANGLES;