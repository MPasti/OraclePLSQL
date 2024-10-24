SELECT 
    CASE GROUPING(id_divisao)
        WHEN 1 THEN 'Todas as Divisões'
        ELSE id_divisao
    END AS DIV, SUM(salario)
FROM tb_funcionarios_2
GROUP BY ROLLUP(id_divisao)
ORDER BY id_divisao;

INSERT INTO tb_clients (id_cliente,
                        nome,
                        sobrenome,
                        dt_nascimento,
                        telefone,
                        fg_ativo)
VALUES
(7, 'Joaquim', 'Silva', '26-FEB-1977', '800-666-2522', 1);
