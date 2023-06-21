INSERT INTO tb_idioma(nome) VALUES
('Inglês'),
('Espanhol'),
('francês'),
('chinês'),
('Russo');

INSERT INTO tb_tipo_pagamento(nome) VALUES
('boleto'),
('PIX'),
('cartao'),
('carteiras digitais');

INSERT INTO tb_classificacao (descricao, idade) VALUES
('Essa classificação indica que o conteúdo é adequado para todos os públicos. Não há cenas de violência, linguagem inapropriada, nudez ou temas adultos.',
'livre'),
('Essa classificação é apropriada para crianças acima de 10 anos. Pode conter algumas cenas de ação moderada, violência leve ou temas levemente perturbadores.'
,'10'),
('Essa classificação é apropriada para adolescentes acima de 14 anos. Pode conter violência moderada, linguagem de baixo calão, temas mais maduros e cenas levemente sugestivas.',
'14'),
('Essa classificação é apropriada para pessoas com 16 anos ou mais. Pode conter violência intensa, linguagem forte, cenas de sexo, consumo de drogas e temas adultos.',
'16'),
('Essa classificação é destinada a um público adulto com idade igual ou superior a 18 anos. Pode conter cenas de violência extrema, sexo explícito, linguagem ofensiva, uso de drogas pesadas e temas adultos muito intensos.',
'18');

INSERT INTO tb_pais(nome,cod) 
VALUES
('Estados Unidos','EUA'),
('Espanha','ESP'),
('França','FRA'),
('China','CHN'),
('Russia','RUS');

INSERT INTO tb_pais(nome,cod) 
VALUES
('BRASIL','BRA');


INSERT INTO tb_endereco(cep,rua,numero,complemento,bairro,cidade,estado,dt_atualizacao,id_pais)
VALUES('12345-678', 'Rua das Flores', '123', 'Apto 456', 'Centro', 'São Paulo', 'São Paulo', '2023-06-14', 6),
('12345','Main Street', '789','Suite 101','Downtown', 'Nova York','Nova York','2022-06-14',1),
('72726103','Downing Street', '10', '101', 'Westminster','Londres', ' Inglaterra', '2019-03-26',2),
('72800940','Maple Avenue','456', 'Unit 789','Oakville','Toronto','Ontário','2020-09-14',3),
('2000','George Street','987','Level 12','The Rocks','Sydney','Nova Gales do Sul','2021-05-24',4);


INSERT INTO tb_categoria(nome) 
VALUES ('Suspense'),('Terror'),('Romance'),('Drama'),('Comedia');

INSERT INTO tb_ator(nome,sobrenome,data_nascimento,foto) 
VALUES ('Tom', 'Hanks','1956-07-09','https://images-prod.anothermag.com/900/azure/another-prod/370/2/372352.jpg'),
('Meryl', 'Streep','1949-07-22','https://images-prod.anothermag.com/900/azure/another-prod/370/2/372352.jpg'),
('Leonardo',' DiCaprio', '1974-11-11','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Leonardo_DiCaprio.jpeg/190px-Leonardo_DiCaprio.jpeg'),
('Jennifer','Lawrence','1990-08-15','https://upload.wikimedia.org/wikipedia/commons/4/4f/Jennifer_Lawrence_at_the_83rd_Academy_Awards_crop.jpg'),
('Antonio', 'Banderas', '1960-08-10','https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_34/2976761/190819-antonio-banderas-cs-1029a.jpg'),
('Paz','Vega','1976-01-02','https://br.web.img3.acsta.net/pictures/19/04/09/00/58/2792403.jpg'),
('Maribel', 'Verdú', '1970-10-02','https://media.vogue.es/photos/5cc7508aef0e5a263a180263/1:1/w_815,h_815,c_limit/maribel_verdu_8173.jpg'),
('Jackie', ' Chan','1954-04-07','https://www.shutterstock.com/image-photo/cannes-france-may-17-actor-260nw-202239685.jpg'),
('Jet','Li', '1963-04-26','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIZbGGHZlNwefdzhkwOf4j1FYcLM8jGcFHPlWzyaLRvA&s'),
('Jean', 'Dujardin', '1972-06-19','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1iIkoCjzzmmJY0aI_BbFqi0xrno6ualihzh2E2UCb&s'),
('Marion', 'Cotillard','1975-09-30','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV7KJqiT4HCPi4RHqjZwyNdqjh2K8k_zzqY3q9vKw6g8ukytyiNRuzG757wibafmhrIGU&usqp=CAU'), 
('Vincent', 'Cassel', '1966-11-23','https://c8.alamy.com/comp/C68B8T/vincent-cassel-at-arrivals-for-black-swan-premiere-the-ziegfeld-theatre-C68B8T.jpghttps://c8.alamy.com/comp/C68B8T/vincent-cassel-at-arrivals-for-black-swan-premiere-the-ziegfeld-theatre-C68B8T.jpg'),
('Audrey','Tautou','1976-08-09','https://fr.web.img6.acsta.net/pictures/15/10/13/17/25/367045.jpg'),
('Gérard','Depardieu', '1948-12-27','https://images.mubicdn.net/images/cast_member/5415/cache-1884-1582917445/image-w856.jpg?size=800x');

INSERT INTO tb_plano(nome,valor,descricao) 
VALUES ('básico', '35,00','Plano Básico, você tem acesso ao catálogo completo de filmes e séries disponíveis na plataforma. inclui uma variedade de gêneros, como comédia, drama, ação, suspense e muito mais.Visualização em um dispositivo por vez'),
('premium', '70,00','Plano Premium oferece a melhor qualidade de streaming disponível, com suporte a resoluções Ultra HD (4K) e HDR (High Dynamic Range.Recursos avançados de navegação e personalização'),
('estudante', '25,00','Plano Estudante é oferecido a um preço reduzido em comparação com os planos regulares. Acesso aos serviços de streaming a um preço mais acessível.Streaming em um dispositivo por vez.Qualidade de streaming padrão ou superior'),
('família', '50,00','Plano Família permite que múltiplos usuários da mesma família acessem a plataforma de streaming ao mesmo tempo, em até 4 dispositivos diferentes. cada membro da família pode assistir a conteúdo em seu próprio dispositivo, sem interferência.filmes e séries em qualidade HD.Perfil personalizado.Controle dos pais'),
('exclusivo', '100,00', 'Plano Exclusivo oferece acesso a conteúdo exclusivo que não está disponível em outros planos. Isso pode incluir filmes, séries, documentários ou programas originais produzidos pelo serviço de streaming. Esses conteúdos exclusivos são criados especificamente para atrair e entreter os assinantes do Plano Exclusivo.Lançamentos antecipados.Eventos exclusivos e bônus especiais');


INSERT INTO tb_cartao_credito (numero, dt_vencimento, cod_seguranca, nome_cartao) 
VALUES ('4532123456789012', '2024-08-01', '456', 'Maria Silva'),
('5210987654321098', '2023-11-01', '789', 'Pedro Oliveira'),
('3782876543210987', '2025-06-01', '234', 'Ana Santos'),
('6011234567890123', '2027-02-01', '567', 'Luiz Mendes'),
('4916789012345678', '2026-09-01', '890', 'Laura Almeida');

INSERT INTO tb_usuario(nome,sobrenome, senha, e_mail,status,dt_nascimento,dt_cadastro,dt_atualizacao,id_endereco_4)
 VALUES
 ('Ana', 'Souza', '987654', 'ana.souza@example.com', 'A', '1995-10-20', '2022-03-05', '2022-06-18', 2),
 ('João', 'Silva', '123456', 'joao.silva@example.com', 'A', '1990-05-15', '2022-02-10', '2022-04-25', 3),
 ('Lucas', 'Oliveira', '789012', 'lucas.oliveira@example.com', 'A', '1988-12-03', '2022-01-15', '2022-07-30', 4),
 ('Maria', 'Santos', '543210', 'maria.santos@example.com', 'I', '1992-07-08', '2022-06-01', '2022-06-10', 1),
 ('Pedro', 'Mendes', '246813', 'pedro.mendes@example.com', 'I', '1997-04-17', '2022-09-20', '2022-10-05', 5);
 
 INSERT INTO tb_usuario(nome,sobrenome, senha, e_mail,status,dt_nascimento,dt_cadastro,dt_atualizacao,id_endereco_4)
 VALUES
  ('Gabriela', 'Ferreira', '987321', 'gabriela.ferreira@example.com', 'A', '1993-09-12', '2022-05-02', '2022-08-15',5),
  ('Rafael', 'Santana', '456789', 'rafael.santana@example.com', 'A', '1998-03-25', '2022-04-10', '2022-07-20',4),
  ('Carolina', 'Gomes', '789123', 'carolina.gomes@example.com', 'A', '1991-11-05', '2022-03-20', '2022-06-05',3),
  ('Marcelo', 'Pereira', '123789', 'marcelo.pereira@example.com', 'A', '1996-07-28', '2022-08-05', '2022-11-10',2),
  ('Isabella', 'Lima', '654321', 'isabella.lima@example.com', 'A', '1994-01-18', '2022-07-15', '2022-10-30',1),
  ('Felipe', 'Rocha', '987654', 'felipe.rocha@example.com', 'I', '1990-12-08', '2022-06-15', '2022-09-30',1);


INSERT INTO tb_funcionario(id_usuario, foto,dt_atualizacao)
 VALUES(21, 'https://crb6.org.br/2020/wp-content/uploads/2015/03/Biografia.jpg', '2023-06-14'),
 (22, 'https://www.jornalempresariall.com.br/image/publicacoes/capa/grande/Sua-meta-e-transformar-pessoas-comuns-em-verdadeiros-talentos.jpg','2022-04-05'),
 (23,'https://pt.bcdn.biz/Images/2018/2/17/5c298f39-9cd8-4bf6-a937-b67b718ca1ce.jpg', '2021-08-09'),
 (19,'https://xvcuritiba.com.br/wp-content/uploads/2021/11/Screenshot-2021-11-04-at-09-43-21-WhatsApp-Image-2021-11-03-at-19-27-58-1-jpeg-JPEG-Image-768-%C3%97-1024-pixels-Scaled-....png.webp','2020-01-03'),
 (16,'http://s2.glbimg.com/piZ3M_J9bmE2xgWb0OlJBy_i2jI=/s.glbimg.com/og/rg/f/original/2015/05/29/nosdoc3_606x455.jpg', '2019-07-07');

INSERT INTO tb_cliente(id_usuario,id_cartao,Id_plano,dt_vencplano,dt_atualizacao)
 VALUES	 (20,1,1,'2024-01-04', '2022-12-03'),
		 (13,2,2,'2025-02-05','2021-11-02'),
		 (14,3,3,'2026-03-04','2020-10-01'),
		 (17,4,4,'2027-02-03','2019-09-30'),
		 (18,5,5,'2028-01-02','2018-08-29');


 INSERT INTO perfil(nome,Foto,tipo,dt_atualizacao_2,id_cliente) 
 VALUES
 ('Sarah','https://crb6.org.br/2020/wp-content/uploads/2015/03/Biografia.jpg', 'A', '2023-06-10',1),
 ('Alex', 'https://www.jornalempresariall.com.br/image/publicacoes/capa/grande/Sua-meta-e-transformar-pessoas-comuns-em-verdadeiros-talentos.jpg', 'C','2023-06-12',2),
 ('Max', 'https://pt.bcdn.biz/Images/2018/2/17/5c298f39-9cd8-4bf6-a937-b67b718ca1ce.jpg', 'A','2023-06-08',3),
 ('Mia', 'https://xvcuritiba.com.br/wp-content/uploads/2021/11/Screenshot-2021-11-04-at-09-43-21-WhatsApp-Image-2021-11-03-at-19-27-58-1-jpeg-JPEG-Image-768-%C3%97-1024-pixels-Scaled-....png.webp', 'C','2023-06-14',4),
 ('Ryan', 'http://s2.glbimg.com/piZ3M_J9bmE2xgWb0OlJBy_i2jI=/s.glbimg.com/og/rg/f/original/2015/05/29/nosdoc3_606x455.jpg', 'A','2023-06-06',5);
 

 INSERT INTO Tb_catalogo (pais_origem, imagem_capa, titulo, sinopse, ano_lancamento, duracao, avaliacao, id_idioma, id_classificacao, dt_atualizacao)
VALUES ('Estados Unidos', 'avengers_endgame.jpg', 'Avengers: Endgame', 'Após os eventos devastadores de "Avengers: Infinity War", os heróis sobreviventes precisam se reunir para desfazer as ações de Thanos e restaurar a ordem no universo.', 2019, '03:01:00',5, 1, 3, '2023-06-01'),
 ('Estados Unidos', 'the_dark_knight.jpg', 'The Dark Knight', 'Batman enfrenta o Coringa, um criminoso insano que busca semear o caos e a anarquia em Gotham City.', 2008, '01:50:00', 4, 1, 4, '2023-06-02'),
 ('Estados Unidos', 'inception.jpg', 'Inception', 'Um especialista em extração de informações secretas é contratado para realizar uma tarefa impossível: plantar uma ideia na mente de alguém através dos sonhos.', 2010, '02:28:00', 3,1, 3, '2023-06-03'),
 ('Estados Unidos', 'titanic.jpg', 'Titanic', 'Um romance épico se desenrola a bordo do Titanic, um navio de passageiros que enfrenta um destino trágico.', 1997, '03:14:00',4,1, 2, '2023-06-04'),
 ('Estados Unidos', 'shawshank_redemption.jpg', 'The Shawshank Redemption', 'Um banqueiro condenado injustamente encontra esperança e redenção durante sua longa sentença em Shawshank.', 1994, '02:22:00', 5,1, 3, '2023-06-05'),
 ('Estados Unidos', 'lotr_fellowship.jpg', 'The Lord of the Rings: The Fellowship of the Ring', 'Um grupo de heróis parte em uma jornada perigosa para destruir um poderoso anel e impedir que ele caia nas mãos do mal.', 2001, '02:10:00',5,1,1,'2022-05-02'),
 ('Estados Unidos', 'stranger_things.jpg', 'Stranger Things', 'Um grupo de crianças enfrenta fenômenos sobrenaturais na pequena cidade de Hawkins.', 2016, '00:50:00', 5, 1, 4, '2023-06-06'),
 ('Estados Unidos', 'breaking_bad.jpg', 'Breaking Bad', 'Um professor de química se envolve no mundo do tráfico de drogas após ser diagnosticado com câncer terminal.', 2008, '00:45:00', 1, 1, 5, '2023-06-07'),
 ('Estados Unidos', 'game_of_thrones.jpg', 'Game of Thrones', 'Uma guerra pelo Trono de Ferro se desenrola em Westeros, envolvendo diversas famílias poderosas.', 2011, '01:00:00', 4, 1, 5, '2023-06-08'),
 ('Estados Unidos', 'friends.jpg', 'Friends', 'Um grupo de amigos vive diversas aventuras e confusões na cidade de Nova York.', 1994, '00:22:00', 4, 1, 2, '2023-06-09'),
 ('Reino Unido', 'sherlock.jpg', 'Sherlock', 'O lendário detetive Sherlock Holmes e seu parceiro, o Dr. John Watson, desvendam mistérios intrigantes em Londres.', 2010, '00:70:00', 3, 1, 3, '2023-06-10'),
 ('França', 'amelie.jpg', 'Amélie', 'Amélie é uma jovem tímida que decide melhorar a vida das pessoas ao seu redor, enquanto embarca em suas próprias aventuras românticas.', 2001, '02:02:00',3, 3, 3, '2023-06-16'),
 ('França', 'intocaveis.jpg', 'Intocáveis', 'Baseado em uma história real, o filme retrata a amizade improvável entre um milionário tetraplégico e um jovem cuidador de origem humilde.', 2011, '01:52:00', 5, 3, 3, '2023-06-17'),
 ('Espanha', 'labirinto_fauno.jpg', 'O Labirinto do Fauno', 'Em meio à guerra civil espanhola, uma jovem garota escapa para um mundo mágico, onde enfrenta desafios sombrios e descobre sua verdadeira identidade.', 2006, '01:58:00', 3, 2, 4, '2023-06-18'),
 ('Espanha', 'orfanato.jpg', 'O Orfanato', 'Uma mulher retorna ao antigo orfanato onde cresceu, mas eventos perturbadores começam a acontecer, levando-a a investigar o passado sombrio do lugar.', 2007, '01:45:00', 3, 2, 3, '2023-06-19'),
 ('China', 'hero.jpg', 'Hero', 'Durante o período dos Reinos Combatentes, um assassino é desafiado por outros guerreiros enquanto tenta eliminar o Rei de Qin.', 2002, '01:39:00', 1,4, 4, '2023-06-20');

INSERT INTO tb_filme(oscar, id_catalogo)
VALUES (0,1),(0,2),(0,3),(11,4),(0,5),(0,6),(0,12),(0,13),(0,14),(0,15),(10,16);	

INSERT INTO tb_temporada(titulo, descricao, qtd_episodio, id_serie)
VALUES 
('The Vanishing of Will Byers', 'Quando Will Byers desaparece misteriosamente, seus amigos se unem para desvendar segredos sobrenaturais e encontrar seu amigo desaparecido.', 8,5),
( 'Madmax', 'Um ano após os eventos da primeira temporada, o grupo de amigos se reúne novamente para enfrentar novas ameaças sobrenaturais em Hawkins.', 9,5),
('The Battle of Starcourt', 'No verão de 1985, os adolescentes de Hawkins enfrentam uma nova ameaça quando um shopping center se torna o centro de uma conspiração do Mundo Invertido.', 8,5),
( 'Winter Is Coming', 'Nesta temporada de estreia, as famílias nobres dos Sete Reinos de Westeros lutam pelo Trono de Ferro, enquanto ameaças além da Muralha se aproximam.', 10,3),
( 'The North Remembers', 'Enquanto o caos se espalha pelos Sete Reinos, as casas nobres lutam pelo poder e a guerra dos reis se intensifica.', 10,3),
( 'Valar Dohaeris', 'Após a Batalha de Blackwater, os personagens se preparam para os desafios que estão por vir, enquanto novas alianças são formadas e segredos são revelados.', 10,3);

INSERT INTO tb_ator_catalogo(id_ator, id_catalogo)
VALUES (3,4),(12,16),(3,3),(16,12),(10,14);

INSERT INTO tb_catalogo_categoria(id_catalogo, id_categoria)
VALUES	(2,1), (2,4), (2,5),
		(3,1), (3,4), (3,2),
		(4,4), (4,3),
		(5,4),
		(12,5), (12,3),
		(16,1), (16,4), (16,2),
		(13,4), (16,5),
		(14,4), (14,1),
		(15,4), (15,1),
		(10,5),
		(11,1), (11,4),
		(9,1), (9,4),
		(8,4),
		(7,1), (7,4);

INSERT INTO tb_serie(id_catalogo, qtd_episodio_total, qtd_temporada)
VALUES 	(10, 236, 10),
		(11, 15, 4),
		(9, 73, 8),
		(8, 62, 5),
		(7, 34, 4);

INSERT INTO tb_pais(nome,cod) 
VALUES
('Reino Unido','GBR');

INSERT INTO tb_catalogo_pais(id_catalogo, id_pais)
VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,7),(12,3),(13,3),(14,2),(15,2),(16,4);

INSERT INTO tb_catalago_idioma(id_catalogo,id_idioma)
VALUES 
		(1,1),(1, 2), (1, 3), (1, 4), (1, 5),
		(2, 1),(2,2), (2, 3), (2, 4), (2, 5),
		(3, 1),(3,2), (3, 3), (3, 4), (3, 5),
		(4,1),(4, 2), (4, 3), (4, 4), (4, 5),
		(5,1),(5, 2), (5, 3), (5, 4), (5, 5),
		(6, 1),(7,1),(8, 1),(9, 1), (10, 1),(11, 1), 
		(12,1),(12, 2), (12, 3), (12, 4), (12, 5),
		(13,1),(13, 2), (13, 3), (13, 4), (13, 5),
		(14,1),(16, 2), (14, 3), (14, 4), (14, 5),
		(15,1),(16,2), (15, 3), (15, 4), (15, 5),
		(16, 1),(16,2), (16, 3), (16, 4), (16, 5);



INSERT INTO tb_pagamento(valor, dt_pagamento,id_cartao,id_tipo_pagamento, id_cliente)
VALUES (50,'2023-05-10',3,3,13);

INSERT INTO tb_pagamento(valor, dt_pagamento,id_tipo_pagamento, id_cliente)
VALUES 	(35,'2023-06-10',4, 15),
		(70,'2023-06-16',1,11),
		(25,'2023-05-15',4,12),
		(100,'2023-05-30',2,14);

INSERT INTO tb_episodio(numero,id_catalogo, id_temporada) 
VALUES 	(1,9,12),(2,9,12),(3,9,12),(4,9,12),(5,9,12),(6,9,12),(7,9,12),(8,9,12),(9,9,12),(10,9,12),
		(1,9,11),(2,9,11),(3,9,11),(4,9,11),(5,9,11),(6,9,11),(7,9,11),(8,9,11),(9,9,11),(10,9,11),
		(1,9,10),(2,9,10),(3,9,10),(4,9,10),(5,9,10),(6,9,10),(7,9,10),(8,9,10),(9,9,10),(10,9,10),
		(1,7,9),(2,7,9),(3,7,9),(4,7,9),(5,7,9),(6,7,9),(7,7,9),(8,7,9),
		(1,7,8),(2,7,8),(3,7,8),(4,7,8),(5,7,8),(6,7,8),(7,7,8),(8,7,8),(8,7,8),
		(1,7,7),(2,7,7),(3,7,7),(4,7,7),(5,7,7),(6,7,7),(7,7,7),(8,7,7);


