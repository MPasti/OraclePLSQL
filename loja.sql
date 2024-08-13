SHOW user

CREATE TABLE tb_clients(
id_cliente      INTEGER,
nome            VARCHAR2(10) NOT NULL,
sobrenome       VARCHAR2(10) NOT NULL,
dt_nascimento   DATE,
telefone        VARCHAR2(12),
fg_ativo        INTEGER,
CONSTRAINT pk_tb_clientes_id_cliente PRIMARY KEY(id_cliente)
);

CREATE TABLE tb_tipos_produtos(
id_tipo_produto INTEGER,
nm_tipo_produto VARCHAR2(10) NOT NULL,
fg_ativo        INTEGER,
CONSTRAINT pk_tb_tipos_produtos_id_tipo_produto PRIMARY KEY(id_tipo_produto)
);

CREATE TABLE tb_produtos(
id_produto      INTEGER,
id_tipo_produto INTEGER,
nm_produto      VARCHAR2(30) NOT NULL,
ds_produto      VARCHAR2(50),
preco           NUMBER(5,2),
fg_ativo        INTEGER,
CONSTRAINT pk_tb_produtos_id_produto PRIMARY KEY(id_produto),
CONSTRAINT fk_tb_produtos_id_tipo_produto FOREIGN KEY(id_tipo_produto) REFERENCES tb_tipos_produtos(id_tipo_produto)
);

CREATE TABLE tb_compras(
id_produto      INTEGER,
id_cliente      INTEGER,
quantidade      INTEGER,
fg_ativo        INTEGER,
CONSTRAINT fk_tb_compras_id_produto FOREIGN KEY(id_produto)
    REFERENCES tb_produtos(id_produto),
CONSTRAINT fk_tb_compras_id_cliente FOREIGN KEY(id_cliente)
    REFERENCES tb_clients(id_cliente),
CONSTRAINT pk_tb_compras_id_produto_id_cliente
    PRIMARY KEY(id_produto, id_cliente)
);