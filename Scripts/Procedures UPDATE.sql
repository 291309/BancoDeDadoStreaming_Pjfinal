
DELIMITER //
CREATE PROCEDURE sp_update_pais( id_p INT,nome_p VARCHAR(255), cod_p INT ) 
BEGIN 
IF NOT EXISTS(SELECT id_pais FROM tb_pais WHERE id_pais= id_p) THEN 
 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pais nâo existe';
 ELSE 
 UPDATE tb_pais SET id_pais = id_p,
					nome = nome_p,
                    cod = cod_p WHERE id_pais = id_p;
END IF;
END //
DELIMITER ;

USE db_pfinal;
SELECT * FROM tb_pais;
CALL sp_update_pais(07,'DINAMARCA', 'DIN');

DELIMITER //
CREATE PROCEDURE sp_update_categoria( id_cat INT,nome_cat VARCHAR(100)) 
BEGIN 
IF NOT EXISTS(SELECT id_categoria FROM tb_categoria WHERE id_categoria = id_cat) THEN 
 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Categoria nâo existe';
 ELSE 
 UPDATE tb_categoria SET id_categoria = id_cat,
						 nome = nome_cat
						WHERE id_categoria = id_cat;
END IF;
END //
DELIMITER ;

SELECT * FROM tb_categoria;
CALL sp_update_categoria(8,'documentario');

DELIMITER //
CREATE PROCEDURE sp_update_idioma( id_idi INT,nome_idi VARCHAR(100)) 
BEGIN 
IF NOT EXISTS(SELECT id_idioma FROM tb_idioma WHERE id_idioma = id_idi) THEN 
 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Idioma não existe';
 ELSE 
 UPDATE tb_idioma SET id_idioma = id_idi,
						 nome = nome_idi
						WHERE id_idioma = id_idi;
END IF;
END //
DELIMITER ;

SELECT * FROM tb_idioma;
CALL sp_update_idioma(11,'alemão');

