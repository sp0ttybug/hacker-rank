-- Manhattan Distance: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.

select ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)), 4) FROM STATION;

-- OR 

SELECT ROUND(ABS(A - C) + ABS(B - D), 4)
FROM (
		SELECT MAX(LAT_N) AS A, MIN(LAT_N) AS B , MAX(LONG_W) AS C , MIN(LONG_W) AS D
		FROM STATION
	) ;