SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_produtos
UNION ALL
SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_mais_produtos;

SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_produtos
UNION 
SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_mais_produtos;


SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_produtos
INTERSECT
SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_mais_produtos;

SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_produtos
MINUS
SELECT id_produto, id_tipo_produto, nm_produto
FROM tb_mais_produtos;

(SELECT id_produto, id_tipo_produto, nm_produto
 FROM tb_produtos
 UNION
 SELECT id_produto, id_tipo_produto, nm_produto
 FROM tb_mais_produtos)
 INTERSECT
 SELECT id_produto, id_tipo_produto, nm_produto
 FROM tb_alteracoes_produtos;
