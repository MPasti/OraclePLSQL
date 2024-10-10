SELECT e.sobrenome, d.nm_departamento, e.salario
FROM tb_empregado e, tb_departamento d
WHERE e.id_departamento = d.id_departamento
AND (salario, NVL(percentual_comissao, 0)) IN (SELECT salario, NVL(percentual_comissao, 0)
                                              FROM tb_empregado e, tb_departamento d
                                              WHERE e.id_departamento = d.id_departamento
                                              AND d.id_localizacao = 1700);

SELECT id_empregado, sobrenome, id_departamento
FROM tb_empregado
WHERE id_departamento IN (SELECT id_departamento
                          FROM tb_departamento
                          WHERE id_localizacao IN (SELECT id_localizacao
                                                   FROM tb_localizacao 
                                                   WHERE cidade LIKE 'T%'));







