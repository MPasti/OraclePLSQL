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
