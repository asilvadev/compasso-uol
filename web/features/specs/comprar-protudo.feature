#language: pt

Funcionalidade: Comprar produto pesquisado
    Sendo eu um potencial cliente no site
    Desejo pesquisar um produto
    Para que eu possa compra-lo

    @pedido_comcadastro
    Cenário: Comprar produto com cadastrado
        Dado que acesso a página principal
            E submeto o produto que quero pesquisar: "Faded Short Sleeve"
        Quando coloco o item no meu carrinho
            E inicio o processo de compra
            E minhas credenciais de cadastro são "alan@temp.vc" e "123456"
        Então ao finalizar a compra eu desejo ver a seguinte mensagem: "Your order on My Store is complete."

    @pedido_semcadastro
    Cenário: Comprar produto com cadastrado
        Dado que acesso a página principal
            E submeto o produto que quero pesquisar: "Faded Short Sleeve"
        Quando coloco o item no meu carrinho
            E inicio o processo de compra
            E ao chegar no sign in realizo meu cadastro
        Então ao finalizar a compra eu desejo ver a seguinte mensagem: "Your order on My Store is complete."