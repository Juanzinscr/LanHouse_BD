USE lan_house;

-- =====================================
-- DATA_CADASTRO
-- =====================================

UPDATE cliente
SET data_cadastro = '2026-01-05'
WHERE id_cliente = 1;

UPDATE cliente
SET data_cadastro = '2026-01-08'
WHERE id_cliente = 2;

UPDATE cliente
SET data_cadastro = '2026-01-10'
WHERE id_cliente = 3;

UPDATE cliente
SET data_cadastro = '2026-01-12'
WHERE id_cliente = 4;

UPDATE cliente
SET data_cadastro = '2026-01-15'
WHERE id_cliente = 5;

UPDATE cliente
SET data_cadastro = '2026-01-18'
WHERE id_cliente = 6;

UPDATE cliente
SET data_cadastro = '2026-01-20'
WHERE id_cliente = 7;

UPDATE cliente
SET data_cadastro = '2026-01-23'
WHERE id_cliente = 8;

UPDATE cliente
SET data_cadastro = '2026-01-25'
WHERE id_cliente = 9;

UPDATE cliente
SET data_cadastro = '2026-01-28'
WHERE id_cliente = 10;

UPDATE cliente
SET data_cadastro = '2026-02-01'
WHERE id_cliente = 11;

UPDATE cliente
SET data_cadastro = '2026-02-03'
WHERE id_cliente = 12;

UPDATE cliente
SET data_cadastro = '2026-02-06'
WHERE id_cliente = 13;

UPDATE cliente
SET data_cadastro = '2026-02-10'
WHERE id_cliente = 14;

UPDATE cliente
SET data_cadastro = '2026-02-14'
WHERE id_cliente = 15;

UPDATE cliente
SET data_cadastro = '2026-02-18'
WHERE id_cliente = 16;

UPDATE cliente
SET data_cadastro = '2026-02-20'
WHERE id_cliente = 17;

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
