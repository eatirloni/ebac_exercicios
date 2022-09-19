            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Checkout do portal EBAC

            Cenário : Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu cadastrar todos os dados obrigatórios
            Então deve conluir essa etapa de cadastro

            Cenário : Campo e-mail com formato inválido.
            Quando eu digitar um e-mail com formato inválido
            Então deve exibir uma mensagem de erro "Formato de e-mail inválido"

            Cenário : Cadastrar-se com campos vazios.
            Quando eu me cadastrar com campos vazios
            Então deve exibir uma mensagem de alerta "Preencher campos obrigatórios"

            Esquema do Cenário : Alerta de campos vazios
            Quando eu me cadastrar com <campo vazio> obrigatório
            Então deve exibir uma <mensagem> de alerta

            Exemplos :
            | campo vazio          | mensagem                                |
            | "nome"               | "Preencher campo de nome"               |
            | "sobrenome"          | "Preencher campo de sobrenome"          |
            | "endereço"           | "Preencher campo de endereço"           |
            | "cidade"             | "Preencher campo de cidade"             |
            | "cep"                | "Preencher campo de cep"                |
            | "telefone"           | "Preencher campo de telefone"           |
            | "endereço de e-mail" | "Preencher campo de endereço de e-mail" |