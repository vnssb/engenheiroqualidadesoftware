#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação)
Para visualizar meus pedidos

Critérios: 
1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Dados válidos deve ser direcionado para a tela de checkout
Dado que o usuário inseriu os dados válidos nos campos de login
Quando o usuário submete os dados para autenticação 
Então o usuário é direcionado para a tela de checkout

Cenário: Campos inválidos com mensagem de alerta
Dado que o usuário inseriu dados inválidos nos campos de login
Quando o usuário submete os dados para autenticação 
Então uma mensagem de alerta “Usuário ou senha inválidos” é exibida
