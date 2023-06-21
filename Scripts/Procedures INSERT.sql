
DELIMITER //
CREATE PROCEDURE sp_insert_pais(
    IN nome_pais_p VARCHAR(255),
    IN cod CHAR(3)
)
BEGIN
    DECLARE existe_pais INT;
    SET existe_pais = 0;
    IF (nome_pais_p IS NULL) OR (LENGTH(TRIM(nome_pais_p))) <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nome não pode ser nulo';
    ELSE
        SELECT COUNT(*) INTO existe_pais FROM tb_pais WHERE nome = nome_pais_p;
		IF existe_pais > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'País já existe';
        ELSE
            INSERT INTO tb_pais (nome, cod) VALUES (nome_pais_p, cod);
        END IF;
    END IF;
END//
DELIMITER ;

SELECT * FROM tb_pais;
CALL sp_insert_pais('Brasil','BRA');
CALL sp_insert_pais('Serra Leoa','SLE');

DELIMITER //
CREATE PROCEDURE sp_insert_categoria(
    IN nome_cat VARCHAR(100)
)
BEGIN
    DECLARE existe_cat INT;
    SET existe_cat = 0;
    IF (nome_cat IS NULL) OR (LENGTH(TRIM(nome_cat))) <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Categoria não pode ser nulo';
    ELSE
        SELECT COUNT(*) INTO existe_cat FROM tb_categoria WHERE nome = nome_cat;
		IF existe_cat > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Categoria já existe';
        ELSE
            INSERT INTO tb_categoria (nome) VALUES (nome_cat);
        END IF;
    END IF;
END//
DELIMITER ;

SELECT * FROM tb_categoria;
CALL sp_insert_categoria('ficcao');
CALL sp_insert_categoria('documentario');

DELIMITER //
CREATE PROCEDURE sp_insert_idioma(
    IN nome_idi VARCHAR(100)
)
BEGIN
    DECLARE existe_idi INT;
    SET existe_idi = 0;
    IF (nome_idi IS NULL) OR (LENGTH(TRIM(nome_idi))) <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Idioma não pode ser nulo';
    ELSE
        SELECT COUNT(*) INTO existe_idi FROM tb_idioma WHERE nome = nome_idi;
		IF existe_idi > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Idioma já existe';
        ELSE
            INSERT INTO tb_idioma (nome) VALUES (nome_idi);
        END IF;
    END IF;
END//
DELIMITER ;

SELECT * FROM tb_idioma;
CALL sp_insert_idioma('japones');

