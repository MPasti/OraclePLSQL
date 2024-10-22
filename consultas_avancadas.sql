SELECT TRANSLATE ('MENSAGEM SECRETA',
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    'EFGHIJKLMNOPQRSTUVWXYZABCD')
FROM DUAL;

SELECT DECODE(1,2,1,3)
FROM DUAL;

SELECT id_produto, disponivel,
        DECODE(disponivel, 'Y', 'Produto está disponível',
                                'Produto não está disponível')
        FROM tb_mais_produtos;
        
SELECT TRANSLATE('MENSAGEM SECRETA',
                 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                 'EFGHIJKLMNOPQRSTUVWXYZABCD')
FROM dual;


SELECT id_produto, 
       TRANSLATE(nm_produto,
                 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',
                 'EFGHIJKLMNOPQRSTUVWXYZABCDefghijklmnopqrstuvwxyzabcd')
FROM tb_produtos;

SELECT TRANSLATE(12345,
                 54321,
                 67890)
FROM dual;


SELECT DECODE(1, 1, 2, 3)
FROM dual;


SELECT DECODE(1, 2, 1, 3)
FROM dual;


SELECT id_produto, id_tipo_produto,
       DECODE(id_tipo_produto,
              1, 'Book',
              2, 'Video',
              3, 'DVD',
              4, 'CD',
                 'Magazine')
FROM tb_produtos;


CASE search_expression
    WHEN expression1 THEN result1
    WHEN expression2 THEN result2
    
    
SELECT id_produto, id_tipo_produto
            CASE id_tipo_produto
                WHEN 1 THEN 'book'
                WHEN 2 THEN 'video'
                WHEN 3 THEN 'DVD'
                WHEN 4 THEN 'CD'
                ELSE 'Magazine'
            END
FROM tb_produtos;
