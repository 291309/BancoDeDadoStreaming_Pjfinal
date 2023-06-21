# Projeto final 

O projeto tem o objetivo de mostrar o aprendizado no curso de DBA.


![Modelo Conceitual](C:\Users\User\Documents\imagem\conceitual.png)
</div> 

![Modelo Logico](C:\Users\User\Documents\imagem\logico.png)

</div> 


## Lista de Tabelas
- Tabela 1 Categoria
- Tabela 2 idioma
- Tabela 3 Classificação 
- Tabela 4 Episodio
- Tabela 5 Temporada
- Tabela 6 Serie
- Tabela 7 Filme
- Tabela 8 Catalogo
- Tabela 9 Pagamento
- Tabela 10 Tipo Pagamento 
- Tabela 11 Cartão Crédito
- Tabela 12 Plano
- Tabela 13 Perfil
- Tabela 14 Cliente
- Tabela 15 Funcionario
- Tabela 16 Usuário
- Tabela 17 Endereço 
- Tabela 18 Pais
- Tabela 19 Ator
- Tabela 20 Ator_catalogo
- Tabela 21 Catalogo Categoria
- Tabela 22 Catalogo Idioma
- Tabela 23 Catalogo Categoria
- Tabela 24 Catalogo Pais


# Lista de Visualizações

- ** Views 1 - vw_ator:** Mostra os dados dos atores, filmes e serie que participam.

- ** Views2-vw_pagamento:** Mostra todos os dados de pagamentos, o tipo, nome de cliente, plano e data de vencimento.

- ** Views3-vw_perfil:** Mostra todos os dados do perfil e seu cliente.

- ** Views4-vw_usuario:** Mostra todos os dados de todos os usuários, quais são funcionários e quais são clientes, o endereço de cada um e seu pais de origem,  quantos perfis cada um tem e qual é o seu plano.

- ** Views5-vw_catalogo:** Mostra todos os dados do catalogo, identificando series e filmes, o idioma original e quantos idiomas são possíveis escolher, a classificação indicativa e suas categorias.

- ** Views6-vw_episodio:** Mostra todos os dados dos episódios, serie, e temporada.

- ** Views7-vw_temporada:** Mostra todos os dados da temporada, a quantidade de episodios, e sua série.


# Funções

- ** Function1-fn_remove_acento: ** Esta função faz a remoção de acento nos textos.


# Lista de Procedures

- ** Procedures1-sp_delete:** Esta procedure deleta os dados de acordo com o registro indicado.

- ** Procedures1-sp_update:** Esta procedure permite a alteração na tabela de acordo com os criterios validados para o registro indicado.

- ** Procedures1-sp_insert:** Esta procedure valida as informações de insert, se todas estiverem de acordo com os paramentros estabelecidos o insert é aceito na tabela. 


# Lista de Triggers

- ** Trigger1 - tr_update_pais_validacao_cod:** verifica se o codigo do pais, está com os 03 digitos.

- ** Trigger2 - tr_delete_pais:** gera um historico de usuarios que alteraram a tabela.

# Considerações Finais

O projeto foi desenvolvido como avaliação do curso de administraçao de banco de dados, com elaboração dos modelos lógico e conceitual, fisico, com a utilização de várias ferramentas e sistemas de gerenciamento de banco de dados.