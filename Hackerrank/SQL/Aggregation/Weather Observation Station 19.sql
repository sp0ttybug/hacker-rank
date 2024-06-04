SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;


-- or 

SELECT ROUND(
            SQRT(
                POW( (MAX(LAT_N) - MIN(LAT_N)), 2) + 
                POW( (MAX(LONG_W) - MIN(LONG_W)), 2)
            )
        , 4)
FROM STATION