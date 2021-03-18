class SearchPage
  include Capybara::DSL

  def on_searchpage?
    return page.has_css?("#search")
  end

  def get_firstproduto
    find(".product_list").first("li").click
  end

  def add_tocart
    produto = find(".product_list").first("li").click
    find("button[name=Submit]").click

    return page.has_css?(".icon-ok")

    #
  end

  def proceed_tochekout
    find_link("Proceed to checkout").click
  end
end
