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
            Quando eu digitar <nome>, <sobrenome>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            Então deve exibir uma <mensagem> de alerta

            Exemplos :
            | nome    | sobrenome | endereco                   | cidade      | cep         | telefone        | e-mail                  | mensagem                       |
            | "erika" | "tirloni" | "rua serra de jairé, 1284" | "são paulo" | "03175-010" | "11 98222-0367" | "erika_eat@hotmail.com" | "Cadastro feito com sucesso"   |
            | " "     | "tirloni" | "rua serra de jairé, 1284" | "são paulo" | "03175-010" | "11 98222-0367" | "erika_eat@hotmail.com" | "Preencher campo de nome"      |
            | "erika" | " "       | "rua serra de jairé, 1284" | "são paulo" | "03175-010" | "11 98222-0367" | "erika_eat@hotmail.com" | "Preencher campo de sobrenome" |
            | "erika" | "tirloni" | " "                        | "são paulo" | "03175-010" | "11 98222-0367" | "erika_eat@hotmail.com" | "Preencher campo de endereço"  |
            | "erika" | "tirloni" | "rua serra de jairé, 1284" | " "         | "03175-010" | "11 98222-0367" | "erika_eat@hotmail.com" | "Preencher campo de cidade"    |
            | "erika" | "tirloni" | "rua serra de jairé, 1284" | "são paulo" | " "         | "11 98222-0367" | "erika_eat@hotmail.com" | "Preencher campo de cep"       |
            | "erika" | "tirloni" | "rua serra de jairé, 1284" | "são paulo" | "03175-010" | " "             | "erika_eat@hotmail.com" | "Preencher campo de telefone"  |
            | "erika" | "tirloni" | "rua serra de jairé, 1284" | "são paulo" | "03175-010" | "11 98222-0367" | " "                     | "Preencher campo de email"     |
