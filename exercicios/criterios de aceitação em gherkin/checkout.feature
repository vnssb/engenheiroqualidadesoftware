#language: pt

Funcionalidade: Carrinho
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Critérios:
1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Cenário: Cadastro com todos os dados obrigatórios
Dado que o usuário está na tela de cadastro
Quando o usuário preenche todos os campos obrigatórios
Então o usuário é cadastrado com sucesso

Cenário: Campos vazios
Dado que o usuário está na tela de cadastro
Quando o usuário tenta cadastrar com campos vazios
Então o sistema exibe uma mensagem de alerta informando que todos os campos obrigatórios devem ser preenchidos

Esquema do Cenário: Formato inválido de e-mail
Dado que o <usuario> está na página de cadastro
Quando o <usuario> insere um <email> inválido
Então o sistema exibe uma <mensagem> de erro indicando formato inválido de <email>

Exemplos:
| usuario | email          | mensagem                          |
| joão    | email_invalido | "Preencha os campos obrigatórios" |
| john    | email@invalido | "Preencha os campos obrigatórios" |
| maria   | email.invalido | "Preencha os campos obrigatórios" |
