CREATE DATABASE IF NOT EXISTS  db_PFinal
COLLATE utf8mb4_general_ci
CHARSET utf8mb4;

USE db_PFinal;

CREATE TABLE tb_categoria (
    id_categoria INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
) auto_increment = 1;

CREATE TABLE tb_idioma (
    id_idioma INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
) AUTO_INCREMENT = 1;

CREATE TABLE tb_classificacao (
    id_classificacao INTEGER PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    idade INTEGER NOT NULL
) AUTO_INCREMENT = 1;

CREATE TABLE tb_episodio (
    id_episodio INTEGER PRIMARY KEY AUTO_INCREMENT,
    numero INTEGER NOT NULL,
    id_catalogo INTEGER NOT NULL,
    id_temporada INTEGER NOT NULL,
	CONSTRAINT fk_id_catalogo_7 FOREIGN KEY(id_catalogo)
    REFERENCES tb_catalogo(id_catalogo),
	CONSTRAINT fk_id_temporada_1 FOREIGN KEY(id_temporada)
    REFERENCES tb_temporada(id_temporada)    
) AUTO_INCREMENT = 1;

CREATE TABLE tb_temporada (
    id_temporada INTEGER PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    qtd_episodio INTEGER NOT NULL,
    id_serie INTEGER NOT NULL,
    CONSTRAINT fk_id_serie_1 FOREIGN KEY(id_serie)
    REFERENCES tb_serie(id_serie)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_serie (
    id_serie INTEGER PRIMARY KEY AUTO_INCREMENT,
    qtd_episodio_total INTEGER NOT NULL,
    qtd_temporada INTEGER NOT NULL,
    id_catalogo INTEGER NOT NULL,
    CONSTRAINT fk_id_catalogo_2 FOREIGN KEY(id_catalogo)
    REFERENCES tb_catalogo(id_catalogo)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_filme (
    id_filme INTEGER PRIMARY KEY AUTO_INCREMENT,
    oscar INTEGER,
    id_catalogo INTEGER NOT NULL,
    CONSTRAINT fk_id_catalogo_1 FOREIGN KEY(id_catalogo)
    REFERENCES tb_catalogo (id_catalogo)) AUTO_INCREMENT = 1;

CREATE TABLE tb_pagamento (
    id_pagamento INTEGER PRIMARY KEY AUTO_INCREMENT,
    valor FLOAT NOT NULL,
    dt_pagamento DATE NOT NULL,
    id_cartao INTEGER NOT NULL,
    id_tipo_pagamento INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    CONSTRAINT fk_id_cartao_1 FOREIGN KEY(id_cartao)
	REFERENCES tb_cartao_credito(id_cartao),
    CONSTRAINT fk_id_tipo_pagamento_1 FOREIGN KEY(id_tipo_pagamento)
	REFERENCES tb_tipo_pagamento(id_tipo_pagamento),
	CONSTRAINT fk_id_cliente_1 FOREIGN KEY(id_cliente)
	REFERENCES tb_cliente(id_cliente)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_tipo_pagamento (
    id_tipo_pagamento INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) UNIQUE NOT NULL
) AUTO_INCREMENT = 1;

CREATE TABLE tb_cartao_credito (
    id_cartao INTEGER PRIMARY KEY AUTO_INCREMENT,
    numero CHAR(20) UNIQUE,
    dt_vencimento DATE NOT NULL,
    cod_seguranca CHAR(3) NOT NULL,
    nome_cartao VARCHAR(100) NOT NULL
) AUTO_INCREMENT = 1;

CREATE TABLE tb_plano (
    id_plano INTEGER PRIMARY KEY AUTO_INCREMENT,
    valor FLOAT NOT NULL,
    descricao VARCHAR(255) NOT NULL
) AUTO_INCREMENT = 1;

CREATE TABLE tb_cliente (
    id_cliente INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_usuario INTEGER NOT NULL,
    id_cartao INTEGER NOT NULL,
    id_plano INTEGER NOT NULL,
    dt_vencplano DATE NOT NULL,
    dt_atualizacao DATE NOT NULL,
    CONSTRAINT fk_id_usuario_2 FOREIGN KEY(id_usuario)
    REFERENCES tb_usuario(id_usuario),
    CONSTRAINT fk_id_cartao_2 FOREIGN KEY(id_cartao)
    REFERENCES tb_cartao_credito(id_cartao),
    CONSTRAINT fk_id_plano_1 FOREIGN KEY(id_plano)
    REFERENCES tb_plano(id_plano)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTO_INCREMENT,
    foto VARCHAR(255),
    dt_atualizacao DATE NOT NULL,
    id_usuario INTEGER,
    CONSTRAINT fk_id_usuario_1 FOREIGN KEY(id_usuario)
    REFERENCES tb_usuario(id_usuario)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_usuario (
    id_usuario INTEGER PRIMARY KEY AUTO_INCREMENT,
    senha VARCHAR(100) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100)NOT NULL,
    e_mail VARCHAR(100) UNIQUE NOT NULL,
    status ENUM('A','I'),
    dt_nascimento DATE NOT NULL,
    dt_cadastro DATE NOT NULL,
    dt_atualizacao DATE NOT NULL,
    id_endereco INTEGER NOT NULL,
	CONSTRAINT fk_id_endereco FOREIGN KEY(id_endereco)
    REFERENCES tb_endereco(id_endereco)
)AUTO_INCREMENT = 1;

CREATE TABLE tb_endereco (
    id_endereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    cep INTEGER(9) NOT NULL,
    rua  VARCHAR(50),
    numero INTEGER NOT NULL,
    complemento INTEGER,
    bairro VARCHAR(100),
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    dt_atualizacao DATE,
    id_pais INTEGER,
	CONSTRAINT fk_id_pais FOREIGN KEY(id_pais)
    REFERENCES tb_pais(id_pais)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_pais (
    id_pais INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cod CHAR(3) NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE perfil (
    id_perfil INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    foto VARCHAR(255) ,
    tipo ENUM('A', 'C') NOT NULL,
    dt_atualizacao DATE,
    id_cliente INTEGER,
	CONSTRAINT fk_id_cliente_2 FOREIGN KEY(id_cliente)
    REFERENCES tb_cliente(id_cliente)
) AUTO_INCREMENT = 1;

CREATE TABLE tb_ator (
    id_ator INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    foto VARCHAR(255) NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_catalogo (
    id_catalogo INTEGER PRIMARY KEY AUTO_INCREMENT,
    pais_origem VARCHAR(100) NOT NULL,
    imagem_capa VARCHAR(255) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    ano_lancamento YEAR NOT NULL,
    duracao TIME NOT NULL,
    avaliacao INTEGER NOT NULL,
    id_idioma INTEGER NOT NULL,
    id_classificacao INTEGER NOT NULL,
    dt_atualizacao DATE NOT NULL,
	CONSTRAINT fk_id_idioma_2 FOREIGN KEY(id_idioma)
    REFERENCES tb_idioma(id_idioma),
	CONSTRAINT fk_id_classificacao_1 FOREIGN KEY(id_classificacao)
    REFERENCES tb_classificacao(id_classificacao)
)AUTO_INCREMENT = 1;

CREATE TABLE tb_ator_catalogo (
        id_ator_catalogo INTEGER PRIMARY KEY AUTO_INCREMENT,
        id_ator INTEGER NOT NULL,
        id_catalogo INTEGER NOT NULL,
        CONSTRAINT fk_id_ator_1 FOREIGN KEY(id_ator)
		REFERENCES tb_ator(id_ator),
		CONSTRAINT fk_id_catalogo_5 FOREIGN KEY(id_catalogo)
		REFERENCES tb_catalogo(id_catalogo)		
)AUTO_INCREMENT = 1;

CREATE TABLE tb_catalogo_idioma (
    id_catalogo_idioma INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_catalogo INTEGER NOT NULL,
    id_idioma INTEGER NOT NULL,
    CONSTRAINT fk_id_catalogo_4 FOREIGN KEY(id_catalogo)
	REFERENCES tb_catalogo(id_catalogo),
	CONSTRAINT fk_id_idioma_1 FOREIGN KEY(id_idioma)
	REFERENCES tb_idioma(id_idioma)
)AUTO_INCREMENT = 1;

CREATE TABLE tb_catalogo_categoria (
    id_catalogo_categoria INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_categoria INTEGER NOT NULL,
    id_catalogo INTEGER NOT NULL,
    CONSTRAINT fk_id_categoria_1 FOREIGN KEY(id_categoria)
    REFERENCES tb_categoria(id_categoria),
    CONSTRAINT fk_id_catalogo_3 FOREIGN KEY(id_catalogo)
    REFERENCES tb_catalogo(id_catalogo)
) AUTO_INCREMENT = 1 ;

CREATE TABLE tb_catalogo_pais (
    id_catalogo_pais INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_pais INTEGER NOT NULL,
    id_catalogo INTEGER NOT NULL,
    CONSTRAINT fk_id_catalogo_6 FOREIGN KEY(id_catalogo)
	REFERENCES tb_catalogo(id_catalogo),
    CONSTRAINT fk_id_pais_2 FOREIGN KEY(id_pais)
	REFERENCES tb_pais(id_pais)
)AUTO_INCREMENT = 1;
 

