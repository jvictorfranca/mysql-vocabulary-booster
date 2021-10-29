USE hr; 

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50)) 
BEGIN 
SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS "Nome completo", de.DEPARTMENT_NAME AS "Departamento" , jb.JOB_TITLE AS  "Cargo" FROM job_history AS jh
INNER JOIN employees AS em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN departments AS de
ON jh.DEPARTMENT_ID = de.DEPARTMENT_ID
INNER JOIN jobs AS jb
ON jh.JOB_ID = jb.JOB_ID
WHERE em.EMAIL = email
ORDER BY `Departamento`, `Cargo`; 
END $$
DELIMITER ;
