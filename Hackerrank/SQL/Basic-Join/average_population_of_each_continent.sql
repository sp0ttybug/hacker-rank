SELECT Country.Continent, FLOOR(AVG(City.Population))
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
GROUP BY Country.Continent;

-- or

SELECT COUNTRY.CONTINENT , FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY,CITY
WHERE COUNTRY.CODE =CITY.COUNTRYCODE
GROUP BY COUNTRY.CONTINENT;