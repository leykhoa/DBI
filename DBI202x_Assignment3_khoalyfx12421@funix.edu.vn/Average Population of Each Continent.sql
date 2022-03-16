select COUNTRY.Continent, floor(avg(CITY.Population))  from CITY 
 join COUNTRY on COUNTRY.CODE = CITY.COUNTRYCODE
 group by COUNTRY.Continent