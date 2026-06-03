USE lan_house;


-- =====================================
-- ABRIR SESSAO
-- =====================================

DELIMITER $$

CREATE PROCEDURE abrir_sessao(
    IN p_id_cliente INT,
    IN p_id_computador INT
)
BEGIN

    DECLARE v_status VARCHAR(30);

    START TRANSACTION;

    SELECT status
    INTO v_status
    FROM computador
    WHERE id_computador = p_id_computador;

    IF v_status = 'Livre' THEN

        INSERT INTO sessoes (
            inicio,
            id_cliente,
            id_computador
        )
        VALUES (
            NOW(),
            p_id_cliente,
            p_id_computador
        );

        UPDATE computador
        SET status = 'Ocupado'
        WHERE id_computador = p_id_computador;

        COMMIT;

    ELSE

        ROLLBACK;

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Computador indisponivel para nova sessao';

    END IF;

END$$

DELIMITER ;

-- =====================================
-- ENCERRAR SESSAO
-- =====================================

DELIMITER $$

CREATE PROCEDURE encerrar_sessao(
    IN p_id_sessao INT
)
BEGIN

    DECLARE v_inicio DATETIME;
    DECLARE v_fim DATETIME;
    DECLARE v_horas DECIMAL(10,2);
    DECLARE v_preco_hora DECIMAL(10,2);
    DECLARE v_valor_total DECIMAL(10,2);
    DECLARE v_id_computador INT;

    START TRANSACTION;

    SELECT
        s.inicio,
        s.id_computador,
        c.preco_hora
    INTO
        v_inicio,
        v_id_computador,
        v_preco_hora
    FROM sessoes s
    INNER JOIN computador c
        ON s.id_computador = c.id_computador
    WHERE s.id_sessao = p_id_sessao
      AND s.fim IS NULL;

    IF v_inicio IS NOT NULL THEN

        SET v_fim = NOW();

        SET v_horas =
            TIMESTAMPDIFF(MINUTE, v_inicio, v_fim) / 60;

        SET v_valor_total =
            ROUND(v_horas * v_preco_hora, 2);

        UPDATE sessoes
        SET
            fim = v_fim,
            tempo_total = SEC_TO_TIME(
                TIMESTAMPDIFF(SECOND, v_inicio, v_fim)
            ),
            valor_total = v_valor_total
        WHERE id_sessao = p_id_sessao;

        UPDATE computador
        SET status = 'Livre'
        WHERE id_computador = v_id_computador;

        COMMIT;

    ELSE

        ROLLBACK;

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Sessao nao encontrada ou ja encerrada';

    END IF;

END$$

DELIMITER ;

-- =====================================
-- VALOR SESSAO
-- =====================================

DELIMITER $$

CREATE FUNCTION fn_calcular_valor_sessao(
    p_inicio DATETIME,
    p_fim DATETIME,
    p_preco_hora DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)

DETERMINISTIC

BEGIN

    DECLARE v_horas DECIMAL(10,2);
    DECLARE v_valor DECIMAL(10,2);

    SET v_horas =
        TIMESTAMPDIFF(MINUTE, p_inicio, p_fim) / 60;

    SET v_valor =
        ROUND(v_horas * p_preco_hora, 2);

    RETURN v_valor;

END$$

DELIMITER ;

-- =====================================
-- CATEGORIA CLIENTE
-- =====================================

DELIMITER $$

CREATE FUNCTION fn_categoria_cliente(
    p_id_cliente INT
)
RETURNS VARCHAR(20)

DETERMINISTIC

BEGIN

    DECLARE v_total DECIMAL(10,2);

    SELECT COALESCE(SUM(valor_total),0)
    INTO v_total
    FROM venda
    WHERE id_cliente = p_id_cliente;

    IF v_total <= 100 THEN
        RETURN 'Bronze';

    ELSEIF v_total <= 300 THEN
        RETURN 'Prata';

    ELSE
        RETURN 'Ouro';

    END IF;

END$$

DELIMITER ;
