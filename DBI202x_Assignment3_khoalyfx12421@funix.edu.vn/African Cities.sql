select CITY.NAME from CITY 
left join COUNTRY on COUNTRY.CODE = CITY.COUNTRYCODE
where CONTINENT = 'Africa'