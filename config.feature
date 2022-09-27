#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página do produto

Cenário: Produto adicionado ao carrinho
Quando eu selecionar o size "XS"
E selecionar a color "Orange"
E selecionar a quantidade "2"
Então deve ser exibido a mensagem "Produto adicionado ao carrinho"

Cenário: Produto sem size selecionado
Quando eu selecionar a color "Orange"
E selecionar a quantidade "2"
Então deve ser exibido a mensagem "Por favor selecionar a size"

Cenário: Produto sem color selecionado
Quando eu selecionar o size "XS"
E selecionar a quantidade "2"
Então deve ser exibido a mensagem "Por favor selecionar a color"

Cenário: Produto sem quantidade selecionado
Quando eu selecionar o size "XS"
E selecionar a color "Orange"
Então deve ser exibido a mensagem "Por favor selecionar a quantidade"