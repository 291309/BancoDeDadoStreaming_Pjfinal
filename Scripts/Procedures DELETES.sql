
DELIMITER //
CREATE PROCEDURE sp_delete_categoria(IN id_cat INT ) 
BEGIN 
DELETE FROM tb_categoria WHERE  id_categoria = id_cat;
END//
DELIMITER ;

SELECT * FROM tb_categoria;
CALL sp_delete_categoria( 8);

DELIMITER //
CREATE PROCEDURE sp_delete_pais(IN id_pais_p INT )
BEGIN 
DELETE FROM tb_pais WHERE id_pais = id_pais_p;
DELETE FROM tb_pais WHERE id_pais = id_pais_p;
END //
DELIMITER ;

SELECT * FROM tb_pais;
CALL sp_delete_pais(14);

DELIMITER //
CREATE PROCEDURE sp_delete_idioma(IN id_idi INT )
BEGIN 
DELETE FROM tb_idioma WHERE id_idioma = id_idi;
END //
DELIMITER ;
SELECT * FROM tb_idioma;
CALL sp_delete_idioma(8);