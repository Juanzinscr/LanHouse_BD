USE lan_house;

-- =====================================
-- CONSULTA_1
-- =====================================

SELECT
    c.id_cliente,
    c.nome,
    COUNT(v.id_venda) AS total_compras,
    SUM(v.valor_total) AS faturamento_total

FROM cliente c

INNER JOIN venda v
ON c.id_cliente = v.id_cliente

GROUP BY
    c.id_cliente,
    c.nome

HAVING COUNT(v.id_venda) > 1

ORDER BY faturamento_total DESC

LIMIT 5;

-- =====================================
-- CONSULTA_2
-- =====================================

SELECT
    c.nome,
    c.email,
    c.data_cadastro

FROM cliente c

LEFT JOIN sessoes s
ON c.id_cliente = s.id_cliente

WHERE s.id_sessao IS NULL;

-- =====================================
-- REFATORACAO
-- =====================================

INSERT INTO cliente
(nome, cpf, email, saldo_pontos)
VALUES
('Roberto SemSessao', '707.707.707-70', 'roberto@gmail.com', 0),
('Larissa Offline', '808.808.808-80', 'larissa@gmail.com', 5);

INSERT INTO produto
(nome, categoria, preco, qtd_estoque)
VALUES
('Biscoito Treloso', 'Doce', 2, 40),
('Salgadinho Torcida', 'Snack', 2, 35),
('Amendoim Torrado', 'Snack', 0.75, 25);
