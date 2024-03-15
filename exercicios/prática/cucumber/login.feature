      # language: pt

      Funcionalidade: Tela de login
      Como aluno do portal EBAC
      Quero me autenticar
      Para visualizar minhas notas

      Contexto:
      Dado que eu acesse a página de autenticação do portal EBAC

      Cenário: Autenticação Válida
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de boas vindas "Olá João"

      Cenário: Usuário Inexistente
      Quando eu digitar o usuário "xx@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de alerta "Usuário Inexistente"

      Cenário: Usuário com senha inválida
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "xyz"
      Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

      Esquema do Cenário: Autenticar multiples usuários
      Quando eu digitar o <usuario>
      E a <senha>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | usuário            | senha       | mensagem   |
      | "joao@ebac.com.br" | "senha@123" | "Olá João" |
      | "joao@ebac.com.br" | "senha@123" | "Olá João" |
      | "joao@ebac.com.br" | "senha@123" | "Olá João" |