require_relative "base_service"

class Users < BaseService
  def findall(endpoint, chave_parametro, valor_parametro)
    return self.class.get(
             "/#{endpoint}?#{chave_parametro}=#{valor_parametro}",
           )
  end

  def get(endpoint)
    return self.class.get(
             "/#{endpoint}",
           )
  end

  def getposts(id, endpoint)
    return self.class.get(
             "/users/#{id}/#{endpoint}"
           )
  end
end
