#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação)
Para visualizar meus pedidos

Critérios:
1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Dados válidos deve ser direcionado para a tela de checkout
Dado que o usuário inseriu email ou senha válidos nos campos de login
Quando o usuário submete os dados para autenticação
Então o usuário é direcionado para a tela de checkout

Cenário: Campos inválidos com mensagem de alerta
Dado que o usuário inseriu email ou senha inválidos nos campos de login
Quando o usuário submete os dados para autenticação
Então uma mensagem de alerta “Usuário ou senha inválidos” é exibida

Contexto:
Dado que o usuário está na tela de cadastro

Esquema do Cenário: Dados válidos deve ser direcionado para a tela de checkout
Quando o <usuario> insere <email> e <senha> com <requisitos de senha> válidos
E submete os dados para autenticação
Então o usuário é direcionado para a tela de checkout

Exemplos:
| usuario | email        | senha        | requisitos de senha                         |
| joão    | email_valido | senha_valida | mínimo 12 caracteres entre letras e números |
| john    | email@valido | senha@valida | mínimo 12 caracteres entre letras e números |
| maria   | email.valido | senha.valida | mínimo 12 caracteres entre letras e números |

Esquema do Cenário: Dados inválidos com mensagem de alerta
Quando o <usuario> insere <email> e <senha> inválidos
E submete os dados para autenticação
Então uma <mensagem> de alerta é exibida

Exemplos:
| usuario | email          | mensagem                     |
| joão    | email_invalido | “Usuário ou senha inválidos” |
| john    | email@invalido | “Usuário ou senha inválidos” |
| maria   | email.invalido | “Usuário ou senha inválidos” |