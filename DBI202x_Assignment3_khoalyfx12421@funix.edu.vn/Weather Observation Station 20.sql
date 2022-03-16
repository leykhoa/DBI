select round(LAT_N, 4)from STATION AS S 
where 
(select round(count(S1.ID)/2) - 1 from STATION) = (select count(ID) from STATION AS S2 where S2.LAT_N > S1.LAT_N);