#language: pt

Funcionalidade: Pesquisar Produto
    Sendo um usuário na página principal do site
    Quero pesquisar um produto
    Para que eu possa ter a oportunidade de comprar

    @pesquisa-produto
    Cenário: Pesquisa um produto

        Dado que acesso a página principal
        Quando submeto o produto que quero pesquisar: "Faded Short Sleeve"
        Então sou redirecionado para a página Search que contem o resultado da busca
            E abro a página do primeiro produto que aparecer


