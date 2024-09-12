SELECT UPPER(nome), LOWER(sobrenome)
FROM tb_funcionarios;

SELECT RPAD(nm_produto, 30, '.'), LPAD(preco, 8, '*+')
FROM tb_produtos
WHERE id_produto < 4;

SELECT
    LTRIM('                 olá pessoal'),
    RTRIM('ops fsfsfsfsfsfsfsfs', 'fs'),
    TRIM('0' FROM '0000000treinamento em Oracle00000000')
FROM dual;
    
SELECT nm_produto, UPPER(SUBSTR(nm_produto, 2, 8))
FROM tb_produtos
WHERE id_produto <4;

SELECT MOD(8,3), MOD(8,4)
FROM dual;

SELECT TO_CHAR(12345.67)
FROM dual;

SELECT TO_CHAR(12345678, '999,999.99')
FROM dual;

SELECT 
	CAST(12345.67 AS VARCHAR2(10)),
	CAST('9A4F' AS RAW(2)),
	CAST('01-DEC-2007' AS DATE)
FROM DUAL;

SELECT id_cliente, nome, sobrenome, dt_nascimento
FROM tb_clients
WHERE REGEXP_LIKE(nome, 'j', 'i');

SELECT
    REGEXP_REPLACE('Teste de expressão regular', 'd[[:alpha:]]{1}', 'Oracle')
AS RESULTADO
FROM DUAL;

SELECT
    REGEXP_COUNT('teste teste teste teste expressão regular', 't[[:alpha:]]{4}') AS resultado
FROM DUAL;

SELECT MAX(preco), MIN(preco)
FROM tb_produtos;




