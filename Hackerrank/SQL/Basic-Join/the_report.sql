SELECT
    CASE WHEN Grade >= 8
        THEN Name
        ELSE NULL
    END,
    Grade, Marks
FROM Students
LEFT JOIN Grades
    ON Grades.Min_Mark <= Students.Marks AND Students.Marks <= Grades.Max_Mark
ORDER BY Grade DESC, Name, Marks;


-- OR

select
case when g.grade >= 8 then s.name 
else NULL
END AS Names
, g.grade, s.marks

from students s
inner join grades g
on  g.max_mark >= s.marks and  s.marks  >= g.min_mark
order by g.grade desc,  s.name asc, s.marks asc;



-- OR


SELECT IF(GRADE < 8, NULL, NAME), GRADE, MARKS

FROM STUDENTS JOIN GRADES

WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK

ORDER BY GRADE DESC, NAME;


-- OR

SELECT 
    CASE WHEN GRADE >=8
        THEN NAME
        ELSE NULL
    END,
    GRADE,MARKS
FROM STUDENTS JOIN GRADES
WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC,NAME,MARKS;

