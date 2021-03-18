Before do
  @home_page = HomePage.new
  @search_page = SearchPage.new
  @produto_page = ProdutoPage.new
  @checkout_page = CheckoutPage.new
  @signup_page = SignUp.new

  page.current_window.resize_to(1440, 900)
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
