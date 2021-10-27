USE hr; 
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50)) 
BEGIN 
SELECT AVG(t1.SALARY) AS  "Média salarial" FROM employees AS t1
INNER JOIN jobs as t2
ON t1.JOB_ID = t2.JOB_ID
WHERE JOB_TITLE = job;
END $$
DELIMITER ; 
