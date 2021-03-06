SELECT t2.JOB_TITLE AS Cargo, 
t2.MAX_SALARY - t2.MIN_SALARY
AS "Diferença entre salários máximo e mínimo" FROM employees AS t1
INNER JOIN jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY t1.JOB_ID 
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;
