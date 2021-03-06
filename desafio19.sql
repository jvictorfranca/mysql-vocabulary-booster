USE hr;
DELIMITER $$
DROP FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantity_of_employees INT;
    SELECT COUNT(HIRE_DATE) FROM employees
WHERE MONTH(HIRE_DATE) = mes && YEAR(HIRE_DATE) = ano
INTO quantity_of_employees;
    RETURN quantity_of_employees;
END $$
DELIMITER ;
