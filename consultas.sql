USE lan_house;

-- Listar clientes
SELECT * FROM cliente;

-- Sessões com nome do cliente
SELECT c.nome, s.inicio, s.fim
FROM sessoes s
JOIN cliente c
ON s.id_cliente = c.id_cliente;

-- Produtos em estoque
SELECT nome, qtd_estoque
FROM produto;

-- Vendas realizadas
SELECT v.id_venda, c.nome, v.valor_total
FROM venda v
JOIN cliente c
ON v.id_cliente = c.id_cliente;
