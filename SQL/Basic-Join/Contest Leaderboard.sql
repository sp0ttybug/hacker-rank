SELECT C.hacker_id, C.name, SUM(SC) AS TSC 
FROM Hackers AS C
JOIN
(SELECT hacker_id, challenge_id, MAX(score) AS SC
FROM Submissions
GROUP BY hacker_id, challenge_id
) AS T1
ON C.hacker_id = T1.hacker_id
GROUP BY C.hacker_id, C.name
HAVING TSC > 0
ORDER BY TSC DESC, C.hacker_id

-- OR

select tabl.id,h.name,sum(tabl.max_sum) as total_sum from
hackers as h join
(select h.hacker_id as id, max(s.score) as max_sum
from hackers as h join
submissions as s
on h.hacker_id = s.hacker_id
group by h.hacker_id, s.challenge_id)as tabl
on h.hacker_id = tabl.id
group by tabl.id,h.name
having total_sum <> 0
order by total_sum desc, tabl.id;


