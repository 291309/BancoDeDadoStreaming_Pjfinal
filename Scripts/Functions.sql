

DELIMITER $$
CREATE FUNCTION fn_remove_acento(texto VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
   
    SET texto = REPLACE(texto, 'á', 'a');
    SET texto = REPLACE(texto, 'à', 'a');
    SET texto = REPLACE(texto, 'â', 'a');
    SET texto = REPLACE(texto, 'ã', 'a');
    SET texto = REPLACE(texto, 'ä', 'a');
    SET texto = REPLACE(texto, 'Á', 'A');
    SET texto = REPLACE(texto, 'À', 'A');
    SET texto = REPLACE(texto, 'Â', 'A');
    SET texto = REPLACE(texto, 'Ã', 'A');
    SET texto = REPLACE(texto, 'Ä', 'A');
    SET texto = REPLACE(texto, 'é', 'e');
    SET texto = REPLACE(texto, 'è', 'e');
    SET texto = REPLACE(texto, 'ê', 'e');
    SET texto = REPLACE(texto, 'ë', 'e');
    SET texto = REPLACE(texto, 'É', 'E');
    SET texto = REPLACE(texto, 'È', 'E');
    SET texto = REPLACE(texto, 'Ê', 'E');
    SET texto = REPLACE(texto, 'Ë', 'E');
    SET texto = REPLACE(texto, 'í', 'i');
    SET texto = REPLACE(texto, 'ì', 'i');
    SET texto = REPLACE(texto, 'î', 'i');
    SET texto = REPLACE(texto, 'ï', 'i');
    SET texto = REPLACE(texto, 'Í', 'I');
    SET texto = REPLACE(texto, 'Ì', 'I');
    SET texto = REPLACE(texto, 'Î', 'I');
    SET texto = REPLACE(texto, 'Ï', 'I');
    SET texto = REPLACE(texto, 'ó', 'o');
    SET texto = REPLACE(texto, 'ò', 'o');
    SET texto = REPLACE(texto, 'ô', 'o');
    SET texto = REPLACE(texto, 'õ', 'o');
    SET texto = REPLACE(texto, 'ö', 'o');
    SET texto = REPLACE(texto, 'Ó', 'O');
    SET texto = REPLACE(texto, 'Ò', 'O');
    SET texto = REPLACE(texto, 'Ô', 'O');
    SET texto = REPLACE(texto, 'Õ', 'O');
    SET texto = REPLACE(texto, 'Ö', 'O');
    SET texto = REPLACE(texto, 'ú', 'u');
    SET texto = REPLACE(texto, 'ù', 'u');
    SET texto = REPLACE(texto, 'û', 'u');
    SET texto = REPLACE(texto, 'ü', 'u');
    SET texto = REPLACE(texto, 'Ú', 'U');
    SET texto = REPLACE(texto, 'Ù', 'U');
    SET texto = REPLACE(texto, 'Û', 'U');
    SET texto = REPLACE(texto, 'Ü', 'U');
    SET texto = REPLACE(texto, 'ç', 'c');
    SET texto = REPLACE(texto, 'Ç', 'C');
   RETURN texto;
END $$
DELIMITER ;


-- Como os episódios podem ser lançados em datas diferentes a duração de uma série deve ser sempre recalculado base em seus episódios. --

SELECT * FROM tb_catalogo;
SELECT * FROM tb_serie;
SELECT * FROM tb_episodio;

DELIMITER //
CREATE function fn_tempo_total_serie(id_serie)
RETURNS TIME
DETERMINISTIC
BEGIN
DECLARE duracao_total TIME;
    DECLARE qtd_episodios INT;
    DECLARE id_temporada_atual INT;

RETURN TIME;
END //
DELIMITER;



DELIMITER //
CREATE FUNCTION fn_duracao_total_serie(id_serie_n INT)
RETURNS TIME
BEGIN
    DECLARE duracao_total TIME;
    DECLARE qtd_episodios INT;
    DECLARE id_temporada_atual INT;
    SELECT qtd_episodio_total INTO qtd_episodios FROM tb_serie WHERE id_serie = id_serie_n;
        SET duracao_total = '00:00:00';
		FOR id_temporada_atual IN 1..qtd_episodios DO
        SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(cl.duracao))) INTO duracao_total
        FROM tb_episodio  AS e
        INNER JOIN tb_catalogo AS cl ON e.id_catalogo = cl.id_catalogo
        WHERE e.id_temporada = id_temporada_atual;
    END FOR;
	RETURN duracao_total;
END //

DELIMITER ;




