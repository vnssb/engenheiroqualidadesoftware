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

Cenário: Configurar produto de acordo com tamanho e gosto
Dado que o cliente está configurando o produto por cor, tamanho e quantidade desejada
Quando o cliente insere o produto no carrinho
Então o produto configurado é adicionado corretamente

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Dado que o cliente está configurando o produto
Quando o cliente não seleciona corretamente a cor, tamanho e quantidade
Então o produto configurado não é inserido no carrinho com uma mensagem informando o motivo

Cenário: Deve permitir apenas 10 produtos por venda
Dado que o cliente está configurando o produto
Quando o cliente tenta inserir 11 produtos no carrinho
Então a tentativa apresenta erro com uma mensagem informando o motivo 

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Dado que o cliente está configurando o produto
Quando o cliente clicar no botão "Limpar" do carrinho
Então todas as seleções são desfeitas para o estado original