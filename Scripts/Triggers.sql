
DELIMITER //
CREATE TRIGGER tr_update_pais_validacao_cod
BEFORE UPDATE ON tb_pais
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.cod) <> 3 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O código do país deve ter três caracteres.';
    END IF;
END //
DELIMITER ;






DELIMITER //
CREATE TRIGGER tr_delete_pais
BEFORE DELETE ON tb_pais
FOR EACH ROW
BEGIN
INSERT INTO tb_historico
(usuario,acao, `TABLE`, data)
VALUES
(CURRENT_USER(), 'DELETE','tb_pais',  NOW());
END //
DELIMITER ;
