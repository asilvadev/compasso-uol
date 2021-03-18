class ProdutoPage
  include Capybara::DSL

  def onprodutopage?
    return page.has_css?("#product")
  end
end
