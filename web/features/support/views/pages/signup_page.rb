class SignUp
  include Capybara::DSL
  require "faker"

  def create()
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name

    find_link("Proceed to checkout").click

    find("#email_create").set Faker::Internet.email
    find("button[id=SubmitCreate]").click

    find("#customer_firstname").set first_name
    find("#customer_lastname").set last_name
    find("#passwd").set "pwd123"

    find("#firstname").set first_name
    find("#lastname").set last_name
    find("#address1").set Faker::Address.street_address
    find("#city").set Faker::Address.city
    find("option", text: "Texas").select_option
    find("#postcode").set "92535"
    find("#phone_mobile").set "3213213"
    find("button[id=submitAccount]").click
  end
end
