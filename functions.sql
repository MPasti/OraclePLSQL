//INNER JOIN
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;

SELECT e.employee_id, e.first_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

//natural join

//automaticamente cria uma junção entre as tabelas com base em todas as colunas com o mesmo nome e tipo nas duas tabelas. Ou seja, você não precisa especificar uma condição, pois o Oracle utiliza as colunas comuns para realizar a junção.
SELECT columns
FROM table1
NATURAL JOIN table2;

//JOIN ... USING

SELECT columns
FROM table1
JOIN table2 USING (column1);

SELECT e.employee_id, e.first_name, d.department_name
FROM employees e
JOIN departments d
USING (department_id);

//JOIN ON
SELECT columns
FROM table1
JOIN table2
ON table1.column = table2.column;

//OUTER JOIN
SELECT columns
FROM table1
LEFT OUTER JOIN table2
ON table1.column = table2.column;


SELECT e.first_name, d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id;

SELECT e.first_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

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


SELECT id_cliente, nome, sobrenome, dt_nascimento
FROM tb_clientes
WHERE REGEXP_LIKE(TO_CHAR(dt_nascimento, 'YYYY'), '196[5-8]$');

SELECT
    REGEXP_REPLACE('Teste de expressão regular', 'd[[:alpha:]]{1}', 'Oracle')
AS RESULTADO
FROM DUAL;

SELECT
    REGEXP_COUNT('teste teste teste teste expressão regular', 't[[:alpha:]]{4}') AS resultado
FROM DUAL;

SELECT MAX(preco), MIN(preco)
FROM tb_produtos;

SELECT nm_produto, LENGTH(nm_produto) AS 'Length do produto'
FROM tb_produtos;

SELECT 'O identificador da ' || descricao_funcao || ' é o ID: ' || id_funcao AS "Descrição da Função"
FROM TB_FUNCAO;

CREATE OR REPLACE PROCEDURE show_salario(p_emp_id IN NUMBER) IS
    v_salario employees.salary%TYPE;
BEGIN
    SELECT salary INTO v_salario
    FROM employees
    WHERE employee_id = p_emp_id;
    
    DBMS_OUTPUT.PUT_LINE('O salário do empregado ' || p_emp_id || ' é: ' || v_salario);
END;

SELECT 'Hello, World!' AS greeting
FROM DUAL;


SELECT 2 * 3 AS resultado1, SYSDATE AS data_atual, USER AS nome_usuario
FROM DUAL;

SELECT * 
FROM employees 
WHERE employee_id = &emp_id;


//Se você quiser que a variável seja definida apenas uma vez e reutilizada, você pode usar &&:
SELECT * 
FROM employees 
WHERE employee_id = &&emp_id;



// O LIKE permite o uso de caracteres curinga (% e _) para criar esses padrões flexíveis.
SELECT nome_departamento
FROM TB_DEPARTAMENTO
WHERE nome_departamento LIKE 'Eng%';

SELECT nome_departamento
FROM TB_DEPARTAMENTO
WHERE nome_departamento LIKE '%ing%';
