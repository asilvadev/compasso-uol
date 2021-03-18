class CheckoutPage
  include Capybara::DSL

  def on_checkoutpage?
    return page.has_css?("#order")
  end

  def sign_in(email, password)
    find_link("Proceed to checkout").click

    find("#email").set email
    find("#passwd").set password
    find("#SubmitLogin").click
  end

  def flow()
    find("button[name=processAddress]").click

    find("#uniform-cgv").click
    find("button[name=processCarrier]").click

    find_link("Pay by bank wire").click

    click_button("I confirm my order")
  end

  def on_orderconfirmationpage?
    return page.has_css?("#order-confirmation")
  end
end
