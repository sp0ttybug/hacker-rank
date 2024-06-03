select h.hacker_id, h.name from Submissions as s join Hackers as h 
on s.hacker_id = h.hacker_id 
join Challenges as c on s.challenge_id = c.challenge_id
join Difficulty as d on c.Difficulty_level = d.Difficulty_level
where s.score = d.score 
group by h.hacker_id, h.name 
having count(*) > 1
order by count(*) desc, h.hacker_id;

-- or

SELECT S.HACKER_ID,H.NAME 
FROM SUBMISSIONS AS S
JOIN HACKERS AS H ON S.HACKER_ID =H.HACKER_ID
JOIN CHALLENGES AS C ON C.CHALLENGE_ID = S.CHALLENGE_ID
JOIN DIFFICULTY AS D ON D.DIFFICULTY_LEVEL = C.DIFFICULTY_LEVEL
WHERE S.SCORE =D.SCORE
GROUP BY H.NAME,S.HACKER_ID
HAVING COUNT(S.CHALLENGE_ID) > 1
ORDER BY COUNT(S.CHALLENGE_ID) DESC,S.HACKER_ID ASC;
