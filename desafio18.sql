select CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo', CONCAT(RIGHT(CONCAT('00',DAY(START_DATE)),2),'/',RIGHT(CONCAT('00',MONTH(START_DATE)),2),'/',YEAR(START_DATE)) AS  "Data de início" ,
CONCAT(RIGHT(CONCAT('00',DAY(END_DATE)),2),'/',RIGHT(CONCAT('00',MONTH(END_DATE)),2),'/',YEAR(END_DATE)) AS  "Data de rescisão", ROUND(DATEDIFF(DATE(END_DATE), DATE(START_DATE))/365,2) AS 'Anos trabalhados'
FROM employees AS t1
INNER JOIN job_history AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
