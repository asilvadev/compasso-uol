Quando("coloco o item no meu carrinho") do
  expect(@search_page.add_tocart).to be true
end

Quando("inicio o processo de compra") do
  @search_page.proceed_tochekout
  expect(@checkout_page.on_checkoutpage?).to be true
end

Quando("minhas credenciais de cadastro são {string} e {string}") do |email, password|
  @checkout_page.sign_in(email, password)
end

Quando("ao chegar no sign in realizo meu cadastro") do
  @signup_page.create
end

Então("ao finalizar a compra eu desejo ver a seguinte mensagem: {string}") do |string|
  @checkout_page.flow
  expect(@checkout_page.on_orderconfirmationpage?).to be true
end
