SELECT MONTHS*SALARY AS EARNING,COUNT(*)
FROM EMPLOYEE
GROUP BY EARNING
ORDER BY  EARNING DESC
LIMIT 1;