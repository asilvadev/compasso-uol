require_relative "base_service"

class Posts < BaseService
  def validade(id)
    return self.class.get(
             "/posts/#{id}",
           )
  end
end
