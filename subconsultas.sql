SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos
GROUP BY id_tipo_produto
HAVING AVG(preco) < (SELECT MAX(AVG(preco))
                    FROM tb_produtos
                    GROUP BY id_tipo_produto)
ORDER BY id_tipo_produto

SELECT id_produto
FROM (SELECT id_produto
    FROM tb_produtos
    WHERE id_produto <3);

SELECT id_produto, nm_produto
FROM tb_produtos
WHERE id_produto NOT IN(SELECT id_produto
                        FROM tb_compras);
    
DELETE
FROM tb_funcionarios
WHERE salario > (SELECT AVG(teto_salario)
                 FROM tb_grades_salarios);
                 
ROLLBACK;
