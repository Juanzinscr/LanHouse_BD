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
