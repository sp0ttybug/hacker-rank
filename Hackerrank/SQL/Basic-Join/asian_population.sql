SELECT SUM(City.population)
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
WHERE Country.Continent='Asia';
