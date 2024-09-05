
CREATE TABLE tb_cliente_teste(
id_cliente  INTEGER
ds_cliente  VARCHAR2(40),
nm_cliente  VARCHAR2(40),
valor       NUMERIC,
fg_ativo    INTEGER,
PRIMARY KEY(id_cliente)
);

CREATE OR REPLACE PROCEDURE manipule_dados(
    p_id_cliente    IN tb_cliente_teste.id_cliente%TYPE,
    p_descricao     IN tb_cliente_teste.ds_cliente%TYPE,
    p_nome          IN tb_cliente_teste.nm_cliente%TYPE,
    p_valor         IN tb_cliente_teste.valor%TYPE,
    p_fg_ativo      IN tb_cliente_teste.fg_ativo%TYPE,
    p_opcap         IN CHAR)
AS
v_controle INTEGER;

BEGIN

SELECT count9*) into V_CONTROLE
from

IF(p_opcao = 'i') THEN
    IF(v_controle != 1)THEN
    INSERT INTO tb_cliente_teste(id_cliente, ds_cliente, nm_cliente, valor, 
                                                                    fg_ativo)
    VALUES (p_id_cliente, p_descricao, p_nome, p_valor, p_fg_ativo);
    COMMIT;
    dbms_output.put_line('Cliente inserido com sucesso');
    
    ELSE
        dbms_output.put_line('ID do cliente já existe');
    END IF;
END IF;


