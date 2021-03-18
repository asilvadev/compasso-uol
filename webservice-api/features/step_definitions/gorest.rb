Dado("que quero consumir o endpoint {string}") do |user|
  @endpoint_user = user
end

Quando("submeto a requisição passando o parâmetro {string}") do |chave_parametro|
  @chave_parametro = chave_parametro
end

Quando("o termo {string} para a pesquisa") do |valor_parametro|
  @valor_parametro = valor_parametro
end

Então("devo ver o status code: {string}") do |string|
  @result = Users.new.findall(@endpoint_user, @chave_parametro, @valor_parametro)
  expect(@result.code).to eql 200
end

Então("validar que no array {string} possua todos os elementos Naik") do |string|
  data = @result.parsed_response["data"]

  data.each do |e|
    result = expect(e["name"]).to include(@valor_parametro)
  end
end

Quando("submeto a requisição, devo guardar o primeiro id retornado") do
  result = Users.new.get(@endpoint_user)
  @id = result.parsed_response["data"][0]["id"]
end

Quando("devo enviar uma nova requisição passando o id para o endpoint {string}") do |endpoint|
  @resultUser = Users.new.getposts(@id, endpoint)
end

Entao("devo validar todos os post do usuário") do
  user_posts = @resultUser.parsed_response["data"]

  @DataID = Array.new

  if user_posts == []
    expect(user_posts).to be_empty
  else
    expect(user_posts).not_to be_empty

    user_posts.each do |e|
      @DataID.push(e["id"])
    end
  end
end

Entao("devo ver para cada post o status code: {string}") do |code|
  if @DataID == []
    nulledid = "nopostdada"
    result = Posts.new.validade(nulledid)

    expect(result.code).to eql code.to_i
    expect(result.parsed_response["code"]).to eql 404
  else
    @DataID.each do |e|
      result = Posts.new.validade(e)

      expect(result.code).to eql code.to_i
      expect(result.parsed_response["data"]["id"]).to eql e
    end
  end
end
