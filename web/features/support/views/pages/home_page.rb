class HomePage
  include Capybara::DSL

  def open
    return visit "/"
  end

  def searchwith(produto)
    find("#search_query_top").set produto

    click_button "Search"
  end
end
