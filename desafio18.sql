select CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo', CONCAT(DAY(START_DATE),'/',MONTH(START_DATE),'/',YEAR(START_DATE)) AS  "Data de início" ,
CONCAT(DAY(END_DATE),'/',MONTH(END_DATE),'/',YEAR(END_DATE)) AS  "Data de rescisão", ROUND(DATEDIFF(DATE(END_DATE), DATE(START_DATE))/365,2) AS 'Anos trabalhados'
,t1.*, t2.* FROM employees AS t1
INNER JOIN job_history AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
;
