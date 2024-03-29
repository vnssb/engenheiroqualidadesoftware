#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios:
1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 – Deve permitir apenas 10 produtos por venda
3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que o cliente está configurando o produto

Cenário: Configurar produto de acordo com tamanho e gosto
Quando o cliente seleciona a cor, tamanho e quantidade desejada
E insere o produto no carrinho
Então o produto configurado é adicionado corretamente

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando o cliente não seleciona corretamente a cor, tamanho e quantidade
Então o produto configurado não é inserido no carrinho com uma mensagem de alerta informando o motivo

Cenário: Deve permitir apenas 10 produtos por venda
Quando o cliente tenta inserir 11 ou mais produtos no carrinho
Então a tentativa apresenta erro com uma mensagem de alerta informando o motivo 

Cenário: Quando o usuário clicar no botão “limpar” deve voltar ao estado original
Quando o cliente clicar no botão "Limpar" do carrinho
Então todas as seleções são desfeitas para o estado original