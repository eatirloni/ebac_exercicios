            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "erika@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para a tela de checkout

            Esquema do Cenário: Usuário e senha
            Quando eu digitar <email>
            E digitar <senha>
            Então deve exibir <mensagem>

            Exemplos :
            | email               | senha           | mensagem                     |
            | "erika@ebac.com.br" | "senha@123"     | "Usuário inexistente"        |
            | "xxxx@ebac.com.br"  | "senhainvalida" | "Usuário ou senha inválidos" |