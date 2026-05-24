USE lan_house;

-- =====================================
-- CLIENTE
-- =====================================

INSERT INTO cliente (nome, cpf, email, saldo_pontos) VALUES
('João Silva', '111.111.111-11', 'joao@gmail.com', 50),
('Maria Souza', '222.222.222-22', 'maria@gmail.com', 20),
('Carlos Lima', '333.333.333-33', 'carlos@gmail.com', 10),
('Ana Paula', '444.444.444-44', 'ana@gmail.com', 5),
('Pedro Santos', '555.555.555-55', 'pedro@gmail.com', 100),
('Lucas Alves', '666.666.666-66', 'lucas@gmail.com', 0),
('Fernanda Costa', '777.777.777-77', 'fernanda@gmail.com', 35),
('Juliana Rocha', '888.888.888-88', 'juliana@gmail.com', 12),
('Ricardo Gomes', '999.999.999-99', 'ricardo@gmail.com', 40),
('Camila Dias', '101.101.101-10', 'camila@gmail.com', 22),
('Rafael Pinto', '202.202.202-20', 'rafael@gmail.com', 18),
('Beatriz Melo', '303.303.303-30', 'beatriz@gmail.com', 60),
('Gustavo Lima', '404.404.404-40', 'gustavo@gmail.com', 70),
('Patricia Nunes', '505.505.505-50', 'patricia@gmail.com', 90),
('Felipe Martins', '606.606.606-60', 'felipe@gmail.com', 15);

-- =====================================
-- COMPUTADOR
-- =====================================

INSERT INTO computador (nome, especificacoes, status, preco_hora) VALUES
('PC01', 'i5 16GB GTX1660', 'Livre', 10),
('PC02', 'i5 16GB RTX2060', 'Ocupado', 12),
('PC03', 'Ryzen 5 16GB RTX3060', 'Livre', 15),
('PC04', 'i3 8GB GTX1050', 'Manutenção', 8),
('PC05', 'i7 32GB RTX3070', 'Livre', 20),
('PC06', 'Ryzen 7 16GB RTX4060', 'Livre', 22),
('PC07', 'i5 8GB GTX1650', 'Ocupado', 9),
('PC08', 'Ryzen 5 8GB GTX1060', 'Livre', 10),
('PC09', 'i7 16GB RTX2080', 'Livre', 18),
('PC10', 'i5 16GB GTX1660', 'Livre', 10),
('PC11', 'Ryzen 7 32GB RTX4070', 'Livre', 25),
('PC12', 'i3 8GB Integrada', 'Livre', 6),
('PC13', 'i5 16GB RTX3050', 'Ocupado', 14),
('PC14', 'Ryzen 5 16GB RTX3060', 'Livre', 15),
('PC15', 'i9 64GB RTX4090', 'Livre', 35);

-- =====================================
-- FUNCIONARIO
-- =====================================

INSERT INTO funcionario 
(nome, cargo, salario, data_admissao, login, senha) VALUES
('Marcos Silva', 'Gerente', 3500, '2023-01-10', 'marcos', '123'),
('Paula Souza', 'Atendente', 1800, '2023-02-15', 'paula', '123'),
('Carlos Mendes', 'Caixa', 1900, '2023-03-12', 'carlosm', '123'),
('Fernanda Lima', 'Atendente', 1800, '2023-04-01', 'fernanda', '123'),
('João Pedro', 'Técnico', 2500, '2023-05-20', 'joaop', '123'),
('Amanda Costa', 'Caixa', 2000, '2023-06-11', 'amanda', '123'),
('Rafael Dias', 'Atendente', 1800, '2023-07-09', 'rafaeld', '123'),
('Juliana Alves', 'Gerente', 4000, '2023-08-03', 'juliana', '123'),
('Bruno Rocha', 'Técnico', 2600, '2023-09-18', 'bruno', '123'),
('Patricia Gomes', 'Caixa', 1900, '2023-10-01', 'patricia', '123'),
('Lucas Martins', 'Atendente', 1800, '2023-10-15', 'lucas', '123'),
('Ricardo Melo', 'Técnico', 2400, '2023-11-22', 'ricardo', '123'),
('Camila Nunes', 'Atendente', 1850, '2023-12-05', 'camila', '123'),
('Felipe Santos', 'Caixa', 2000, '2024-01-10', 'felipe', '123'),
('Beatriz Costa', 'Gerente', 4200, '2024-02-01', 'beatriz', '123');

-- =====================================
-- PRODUTO
-- =====================================

INSERT INTO produto (nome, categoria, preco, qtd_estoque) VALUES
('Coca-Cola', 'Bebida', 6, 50),
('Pepsi', 'Bebida', 5, 40),
('Hambúrguer', 'Lanche', 15, 20),
('Batata Frita', 'Lanche', 12, 25),
('Chocolate', 'Doce', 4, 60),
('Água', 'Bebida', 3, 80),
('Energético', 'Bebida', 10, 30),
('Pizza', 'Lanche', 25, 10),
('Salgadinho', 'Snack', 7, 45),
('Sorvete', 'Doce', 8, 18),
('Cookie', 'Doce', 5, 35),
('Suco', 'Bebida', 6, 22),
('Pastel', 'Lanche', 9, 27),
('Café', 'Bebida', 4, 55),
('Hot Dog', 'Lanche', 11, 19);

-- =====================================
-- TORNEIO
-- =====================================

INSERT INTO torneio
(nome, jogo, data_torneio, premiacao, qtd_jogadores) VALUES
('Campeonato CS', 'CS2', '2026-06-01', 500, 10),
('Torneio LoL', 'League of Legends', '2026-06-05', 800, 10),
('FIFA Cup', 'FIFA 26', '2026-06-08', 300, 8),
('Valorant Masters', 'Valorant', '2026-06-10', 1000, 10),
('Mortal Kombat X', 'MKX', '2026-06-12', 250, 6),
('Street Fighter', 'SF6', '2026-06-15', 400, 8),
('Rocket League Pro', 'Rocket League', '2026-06-18', 700, 12),
('Fortnite Arena', 'Fortnite', '2026-06-20', 900, 16),
('PUBG Battle', 'PUBG', '2026-06-22', 500, 12),
('Free Fire Cup', 'Free Fire', '2026-06-25', 600, 20),
('Dota Championship', 'Dota 2', '2026-06-27', 850, 10),
('Overwatch Clash', 'Overwatch', '2026-06-28', 750, 10),
('Rainbow Six', 'R6 Siege', '2026-06-29', 650, 10),
('Tekken Arena', 'Tekken 8', '2026-06-30', 350, 8),
('Minecraft Build', 'Minecraft', '2026-07-01', 200, 15);

-- =====================================
-- SESSOES
-- =====================================

INSERT INTO sessoes
(inicio, fim, tempo_total, valor_total, id_cliente, id_computador) VALUES
('2026-05-01 10:00:00', '2026-05-01 12:00:00', '02:00:00', 20, 1, 1),
('2026-05-01 13:00:00', '2026-05-01 15:00:00', '02:00:00', 24, 2, 2),
('2026-05-01 16:00:00', '2026-05-01 17:30:00', '01:30:00', 22, 3, 3),
('2026-05-02 10:00:00', '2026-05-02 11:00:00', '01:00:00', 8, 4, 4),
('2026-05-02 14:00:00', '2026-05-02 17:00:00', '03:00:00', 60, 5, 5),
('2026-05-03 09:00:00', '2026-05-03 11:00:00', '02:00:00', 44, 6, 6),
('2026-05-03 12:00:00', '2026-05-03 13:00:00', '01:00:00', 9, 7, 7),
('2026-05-03 14:00:00', '2026-05-03 16:00:00', '02:00:00', 20, 8, 8),
('2026-05-04 10:00:00', '2026-05-04 13:00:00', '03:00:00', 54, 9, 9),
('2026-05-04 15:00:00', '2026-05-04 17:00:00', '02:00:00', 20, 10, 10),
('2026-05-05 10:00:00', '2026-05-05 11:00:00', '01:00:00', 25, 11, 11),
('2026-05-05 12:00:00', '2026-05-05 14:00:00', '02:00:00', 12, 12, 12),
('2026-05-06 10:00:00', '2026-05-06 12:00:00', '02:00:00', 28, 13, 13),
('2026-05-06 13:00:00', '2026-05-06 15:00:00', '02:00:00', 30, 14, 14),
('2026-05-06 16:00:00', '2026-05-06 18:00:00', '02:00:00', 70, 15, 15);

-- =====================================
-- VENDA
-- =====================================

INSERT INTO venda
(data_hora, forma_pagamento, valor_total, valor_desconto, id_cliente, id_funcionario)
VALUES
('2026-05-01 10:30:00', 'Pix', 30.00, 0, 1, 1),
('2026-05-01 11:15:00', 'Cartão', 45.00, 5, 2, 2),
('2026-05-01 12:00:00', 'Dinheiro', 20.00, 0, 3, 3),
('2026-05-01 13:20:00', 'Pix', 60.00, 10, 4, 4),
('2026-05-01 14:10:00', 'Cartão', 18.00, 0, 5, 5),
('2026-05-01 15:00:00', 'Dinheiro', 70.00, 5, 6, 6),
('2026-05-02 09:40:00', 'Pix', 25.00, 0, 7, 7),
('2026-05-02 10:30:00', 'Cartão', 40.00, 2, 8, 8),
('2026-05-02 11:45:00', 'Pix', 15.00, 0, 9, 9),
('2026-05-02 13:10:00', 'Dinheiro', 90.00, 10, 10, 10),
('2026-05-03 09:00:00', 'Pix', 35.00, 0, 11, 11),
('2026-05-03 10:50:00', 'Cartão', 55.00, 5, 12, 12),
('2026-05-03 12:30:00', 'Dinheiro', 22.00, 0, 13, 13),
('2026-05-03 14:00:00', 'Pix', 80.00, 8, 14, 14),
('2026-05-03 15:25:00', 'Cartão', 28.00, 0, 15, 15);

-- =====================================
-- ITEM_VENDA
-- =====================================

INSERT INTO item_venda
(quantidade, subtotal, id_venda, id_produto)
VALUES
(2, 12.00, 1, 1),
(1, 15.00, 2, 3),
(3, 12.00, 3, 5),
(2, 24.00, 4, 4),
(1, 18.00, 5, 7),
(2, 50.00, 6, 8),
(1, 25.00, 7, 8),
(4, 28.00, 8, 9),
(2, 10.00, 9, 11),
(3, 30.00, 10, 7),
(1, 35.00, 11, 15),
(2, 30.00, 12, 3),
(1, 22.00, 13, 10),
(2, 50.00, 14, 8),
(4, 24.00, 15, 1);

-- =====================================
-- PARTICIPACAO_TORNEIO
-- =====================================

INSERT INTO participacao_torneio
(colocacao, pontuacao, id_cliente, id_torneio)
VALUES
(1, 100, 1, 1),
(2, 90, 2, 1),
(3, 80, 3, 2),
(4, 70, 4, 2),
(1, 100, 5, 3),
(2, 90, 6, 3),
(3, 85, 7, 4),
(4, 75, 8, 4),
(1, 100, 9, 5),
(2, 92, 10, 5),
(3, 84, 11, 6),
(4, 76, 12, 6),
(1, 100, 13, 7),
(2, 95, 14, 7),
(3, 88, 15, 8);

-- =====================================
-- AUDIT_LOG
-- =====================================

INSERT INTO audit_log
(acao, descricao, data_hora, id_funcionario)
VALUES
('LOGIN', 'Funcionário realizou login no sistema', '2026-05-01 08:00:00', 1),
('CADASTRO', 'Novo cliente cadastrado', '2026-05-01 08:15:00', 2),
('VENDA', 'Venda registrada no caixa', '2026-05-01 09:00:00', 3),
('ALTERACAO', 'Produto atualizado no estoque', '2026-05-01 09:20:00', 4),
('LOGIN', 'Funcionário realizou login no sistema', '2026-05-01 10:00:00', 5),
('SESSAO', 'Sessão iniciada em computador', '2026-05-01 10:30:00', 6),
('SESSAO', 'Sessão encerrada', '2026-05-01 12:00:00', 7),
('VENDA', 'Venda de produtos registrada', '2026-05-01 13:00:00', 8),
('TORNEIO', 'Novo torneio criado', '2026-05-01 14:00:00', 9),
('LOGIN', 'Funcionário realizou login', '2026-05-02 08:00:00', 10),
('ALTERACAO', 'Preço de produto alterado', '2026-05-02 09:30:00', 11),
('CADASTRO', 'Novo funcionário cadastrado', '2026-05-02 10:00:00', 12),
('VENDA', 'Venda cancelada', '2026-05-02 11:00:00', 13),
('SESSAO', 'Cliente desconectado', '2026-05-02 12:00:00', 14),
('LOGIN', 'Administrador acessou o sistema', '2026-05-02 13:00:00', 15);

