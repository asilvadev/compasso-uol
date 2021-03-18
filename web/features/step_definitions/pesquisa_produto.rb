Dado("que acesso a página principal") do
  @home_page.open
end

Quando("submeto o produto que quero pesquisar: {string}") do |produto|
  @home_page.searchwith(produto)
end

Então("sou redirecionado para a página Search que contem o resultado da busca") do
  expect(@search_page.on_searchpage?).to be true
end

Então("abro a página do primeiro produto que aparecer") do
  @search_page.get_firstproduto

  expect(@produto_page.onprodutopage?).to be true
end
