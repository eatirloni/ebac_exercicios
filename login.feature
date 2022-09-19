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

Cenário: Usuário inexistente
Quando eu digitar o usuário "erika02@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "xxxx@ebac.com.br"
E a senha "senhainvalida"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
