SELECT City.Name
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
WHERE Country.Continent = 'Africa';

-- OR 

SELECT CITY.NAME
FROM CITY,COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
AND CONTINENT = "AFRICA";

