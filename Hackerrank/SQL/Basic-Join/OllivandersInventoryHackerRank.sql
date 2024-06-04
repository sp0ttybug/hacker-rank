SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property WP ON W.code = WP.code
WHERE WP.is_evil = 0 AND W.coins_needed = (
    SELECT MIN(coins_needed)
    FROM Wands
    JOIN Wands_Property ON Wands.code = Wands_Property.code
    WHERE Wands.power = W.power AND Wands_Property.age = WP.age
)
ORDER BY W.power DESC, WP.age DESC;

-- or


SELECT w.id, wp.age, m.coins_needed, w.power 
FROM (SELECT code, power, MIN(coins_needed) AS coins_needed FROM Wands GROUP BY code, power) AS m 
JOIN Wands AS W ON m.code = w.code AND m.power = w.power AND m.coins_needed = w.coins_needed
JOIN Wands_Property AS WP ON W.CODE = WP.CODE 
WHERE wp.is_evil = 0 
ORDER BY W.power DESC, WP.age DESC 

