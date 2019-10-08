/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT o.continent, FLOOR(AVG(i.population)) FROM city AS i Join country AS o ON i.COUNTRYCODE=o.CODE 
GROUP BY o.continent