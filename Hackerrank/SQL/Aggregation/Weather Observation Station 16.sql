SELECT ROUND(MIN(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7780 
  
-- OR

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780 
ORDER BY LAT_N;