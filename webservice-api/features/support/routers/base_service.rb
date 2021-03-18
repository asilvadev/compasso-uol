require "httparty"

class BaseService
  include HTTParty
  base_uri "https://gorest.co.in/public-api"
end
