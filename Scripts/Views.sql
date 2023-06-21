CREATE VIEW vw_ator AS
SELECT 
		a.id_ator,
		concat(nome, " ", sobrenome) AS NOME,
        a.data_nascimento,
        a.foto,
        ac.id_catalogo,
        count(ac.id_catalogo) AS total_filme_serie
        FROM tb_ator AS a
INNER JOIN tb_ator_catalogo as ac
ON a.id_ator = ac.id_ator
INNER JOIN tb_catalogo AS c
ON ac.id_catalogo = c.id_catalogo
GROUP BY a.id_ator;

CREATE VIEW vw_pagamento AS 
SELECT
CONCAT('R$', " ",p.valor) AS VALOR_PLANO, 
p.dt_pagamento AS DATA_PAGTO,
tp.nome AS TIPO_PAGAMENTO,
u.nome AS CLIENTE, 
pl.nome AS PLANO,
c.dt_vencplano AS VENC_PLANO
FROM tb_pagamento AS p
LEFT JOIN tb_tipo_pagamento AS tp ON p.id_tipo_pagamento = tp.id_tipo_pagamento
LEFT JOIN tb_cliente AS c ON c.id_cliente = p.id_cliente 
LEFT JOIN tb_plano AS pl ON pl.id_plano = c.id_plano
LEFT JOIN tb_usuario AS u ON  u.id_usuario = c.id_usuario;

CREATE VIEW vw_perfil AS 
SELECT
p.nome, 
P.foto, 
p.tipo ,
p.dt_atualizacao as DATA_ATUALIZACAO,
p.id_cliente,
u.nome
FROM perfil as p
LEFT JOIN tb_cliente as c
ON c.id_cliente  = p.id_cliente
LEFT JOIN tb_usuario AS u
ON u.id_usuario = c.id_usuario;




CREATE VIEW vw_usuario AS 
  SELECT u.id_usuario, CONCAT(u.nome, " ", sobrenome) AS USUARIO,
  u.senha, 
  u.e_mail,
  u.status, 
  u.dt_nascimento AS DATA_NASC,
  u.dt_cadastro,
  u.dt_atualizacao,
    CASE
        WHEN f.id_funcionario IS NOT NULL THEN 'funcionario'
        ELSE 'cliente'
    END AS tipo_usuario,
(
        SELECT COUNT(*) 
        FROM perfil pr 
        WHERE p.id_cliente = c.id_cliente
    ) AS total_perfis,
    pl.nome AS PLANO,
   pl.descricao ,
  p.nome AS PERFIL,
  CONCAT(e.rua, " ", numero," ", complemento," ", bairro," ", cidade, " ",estado) AS ENDERECO,
  ps.nome AS  PAIS
FROM tb_usuario AS u 
INNER JOIN tb_endereco AS e ON u.id_endereco = e.id_endereco
INNER JOIN tb_pais AS ps ON e.id_pais = ps.id_pais
LEFT JOIN tb_funcionario AS f ON f.id_usuario = u.id_usuario
LEFT JOIN tb_cliente AS C ON c.id_usuario = u.id_usuario
LEFT JOIN tb_plano AS pl ON pl.id_plano = c.id_plano
lEFT JOIN perfil AS p ON p.id_cliente = c.id_cliente;

CREATE VIEW vw_temporada AS 
SELECT
	 t.id_temporada,
	 t.titulo AS NOME_SERIE,
	 t.descricao AS DESCRICAO, 
	 t.qtd_episodio AS TOTAL_EPISODIO,
	s.qtd_episodio_total AS TOTAL_EPISODIO_SERIE, 
    cl.titulo AS SERIE
	FROM tb_temporada as t 
INNER JOIN tb_serie AS s ON s.id_serie = t.id_serie
INNER JOIN tb_catalogo AS cl ON cl.id_catalogo = s.id_catalogo;

CREATE VIEW vw_catalogo AS
SELECT
    cl.id_catalogo,
    cl.pais_origem,
    cl.imagem_capa,
    cl.titulo,
    cl.sinopse,
    cl.ano_lancamento,
    cl.duracao,
    cl.avaliacao,
    i.nome AS idioma_original,
    (SELECT COUNT(*) FROM tb_idioma) AS idiomas_disponivel,
    cf.idade,
    cf.descricao AS classificacao,
    IF(s.id_serie IS NULL, 'Filme', 'Série') AS tipo
   FROM
    tb_catalogo AS  cl
    LEFT JOIN tb_idioma  AS i ON cl.id_idioma = i.id_idioma
    LEFT JOIN tb_classificacao AS cf ON cl.id_classificacao = cf.id_classificacao
    LEFT JOIN tb_filme AS f ON cl.id_catalogo = f.id_catalogo
    LEFT JOIN tb_serie s ON cl.id_catalogo = s.id_catalogo
    GROUP BY
    cl.id_catalogo;
    
CREATE VIEW vw_episodio AS
SELECT
    ep.id_episodio,
    ep.numero,
    cl.id_catalogo,
    t.id_temporada,
    t.titulo AS titulo_temporada,
    t.descricao AS descricao_temporada,
    cl.titulo AS titulo_catalogo,
    cl.sinopse AS sinopse_catalogo,
    cl.ano_lancamento AS ano_lancamento_catalogo,
    cl.duracao AS duracao_catalogo,
    cl.avaliacao AS avaliacao_catalogo
FROM
    tb_episodio ep
    INNER JOIN tb_catalogo AS cl ON ep.id_catalogo = cl.id_catalogo
    INNER JOIN tb_temporada AS t ON ep.id_temporada = t.id_temporada;

 











-- vw_pagamento - Deve conter todos os dados de pagamento, seu tipo, o nome do cliente, seu plano e data de vencimento. --
SELECT 
		p.valor,
		p.dt_pagamento,
		p.id_cartao,
		p.id_tipo_pagamento, 
		p.id_cliente
        tp_nome,
        c.data-pagamento,
        c.id_plano
        U.nome
        Tp.nome
 FROM tb_pagamento AS p
LEFT JOIN  TIPO PAGAMENTP
LEFT JOIN TB-CLIENTES
LEFT JOIN TB-USUARIO  tb_cliente;




