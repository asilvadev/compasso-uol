#language: pt

Funcionalidade: Consumindo API Gorest
    Sendo eu um usuário da API
    Quero consumir o endpoint user
    Para que eu possa ter acesso ao response e manipular as informações

    @pesquisa-naik
    Cenário: Pesquisa por usuários específicos

        Dado que quero consumir o endpoint "users"
        Quando submeto a requisição passando o parâmetro "name"
            E o termo "Naik" para a pesquisa
        Então devo ver o status code: "200"
            E validar que no array "data" possua todos os elementos Naik

    @pesquisa-user-posts
    Cenário: Validar os posts do primeiro usuário
        Dado que quero consumir o endpoint "users"
        Quando submeto a requisição, devo guardar o primeiro id retornado
            E devo enviar uma nova requisição passando o id para o endpoint "posts"
        Então devo validar todos os post do usuário
            E devo ver para cada post o status code: "200"



