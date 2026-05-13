CREATE DATABASE lan_house;
USE lan_house;

-- =====================================
-- TABELA CLIENTE
-- =====================================

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100),
    saldo_pontos DECIMAL(10,2) DEFAULT 0
);

-- =====================================
-- TABELA COMPUTADOR
-- =====================================

CREATE TABLE computador (
    id_computador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    especificacoes TEXT,
    status VARCHAR(30),
    preco_hora DECIMAL(10,2)
);

-- =====================================
-- TABELA SESSOES
-- =====================================

CREATE TABLE sessoes (
    id_sessao INT PRIMARY KEY AUTO_INCREMENT,
    inicio DATETIME NOT NULL,
    fim DATETIME,
    tempo_total TIME,
    valor_total DECIMAL(10,2),

    id_cliente INT NOT NULL,
    id_computador INT NOT NULL,

    CONSTRAINT fk_sessao_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_sessao_computador
        FOREIGN KEY (id_computador)
        REFERENCES computador(id_computador)
);

-- =====================================
-- TABELA FUNCIONARIO
-- =====================================

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE,
    login VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- =====================================
-- TABELA VENDA
-- =====================================

CREATE TABLE venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME NOT NULL,
    forma_pagamento VARCHAR(30),
    valor_total DECIMAL(10,2),
    valor_desconto DECIMAL(10,2) DEFAULT 0,

    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,

    CONSTRAINT fk_venda_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_venda_funcionario
        FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);

-- =====================================
-- TABELA PRODUTO
-- =====================================

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    qtd_estoque INT DEFAULT 0
);

-- =====================================
-- TABELA ITEM_VENDA
-- =====================================

CREATE TABLE item_venda (
    id_item_venda INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2),

    id_venda INT NOT NULL,
    id_produto INT NOT NULL,

    CONSTRAINT fk_item_venda
        FOREIGN KEY (id_venda)
        REFERENCES venda(id_venda),

    CONSTRAINT fk_item_produto
        FOREIGN KEY (id_produto)
        REFERENCES produto(id_produto)
);

-- =====================================
-- TABELA TORNEIO
-- =====================================

CREATE TABLE torneio (
    id_torneio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    jogo VARCHAR(100),
    data_torneio DATE,
    premiacao DECIMAL(10,2),
    qtd_jogadores INT
);

-- =====================================
-- TABELA PARTICIPACAO_TORNEIO
-- =====================================

CREATE TABLE participacao_torneio (
    id_participacao INT PRIMARY KEY AUTO_INCREMENT,
    colocacao INT,
    pontuacao INT,

    id_cliente INT NOT NULL,
    id_torneio INT NOT NULL,

    CONSTRAINT fk_participacao_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_participacao_torneio
        FOREIGN KEY (id_torneio)
        REFERENCES torneio(id_torneio)
);

-- =====================================
-- TABELA AUDIT_LOG
-- =====================================

CREATE TABLE audit_log (
    id_audit INT PRIMARY KEY AUTO_INCREMENT,
    acao VARCHAR(100),
    descricao TEXT,
    data_hora DATETIME NOT NULL,

    id_funcionario INT NOT NULL,

    CONSTRAINT fk_audit_funcionario
        FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);
