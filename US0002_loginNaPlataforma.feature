#language: pt

Funcionalidade: Login na Plataforma
    "Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma  
    Para visualizar meus pedidos"

Regra: Regra 1
    "Ao inserir dados válidos deve ser direcionado para a tela de checkout"

Regra: Regra 2
    "Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”"

Contexto:
Dado que eu acesse a página de login da Ebac SHOP

Cenário: Sucesso no login
Quando quando eu informar credenciais de acesso válidas 
Então eu sou direcionado para a tela de checkout

Cenário: Falha no login
Quando quando eu informar credenciais de acesso inválidas 
Então o sistema exibe uma mensagem de alerta com o texto: "Usuário ou senha inválidos"