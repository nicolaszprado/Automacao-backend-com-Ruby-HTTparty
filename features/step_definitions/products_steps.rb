#Cenario1
Dado('que o usuario consulte as informacoes de um produto') do
 @get_url = Product_Requests.new  
end

Quando('ele realizar a Pesquisa') do
  @product_list = @get_url.find_product

end

Entao('uma lista de produtos deve ser exibida') do
  expect(@product_list.code).to eql 200       #verificando se o resultado bate
  expect(@product_list.message).to eql 'OK'
end



#Cenario2
Dado('que o usuario cadastre um novo produto') do
  @create = Product_Requests.new
  @assert = Assertions.new
end

Quando('ele enviar as informacoes de cadastro') do
  @product_create = @create.product_create(DATABASE[:title][:title01],DATABASE[:price][:price1],DATABASE[:description][:description1], DATABASE[:category][:category1])
end

Entao('esse produto sera cadastrado') do
  @assert.request_sucess(@product_create.code, @product_create.message)
  expect(@product_create.parsed_response['title']).to eql DATABASE[:title][:title01] #O método `parsed_response` decodifica a resposta JSON da requisição em um hash Ruby, facilita o acesso aos dados pq nem toda api retorna em String
  expect(@product_create.parsed_response['category']).to eql DATABASE[:category][:category1]  
  expect(@product_create.parsed_response['description']).to eql DATABASE[:description][:description1]
  expect(@product_create.parsed_response['price']).to eql (DATABASE[:price][:price1])
end



#Cenario3
Dado('que o usuario altere os dados de um produto') do
  @request = Product_Requests.new
end 

Quando('ele enviar os dados alterados') do
  @product_update = @request.product_update(@request.find_product[0]['id'], 'test01', 100, 'test010', 'cat test')
end


Entao('as alteracoes serao salvas') do
  expect(@product_update.code).to eql (200)
  expect(@product_update.msg).to eql 'OK'
  expect(@product_update.parsed_response['title']).to eql 'test01' 
  expect(@product_update.parsed_response['price']).to eql (100)
  expect(@product_update.parsed_response['description']).to eql 'test010'  
  expect(@product_update.parsed_response['category']).to eql 'cat test' 
 
end



#Cenario4
Dado('que o usuario queira excluir um produto') do
 @request = Product_Requests.new
end

Quando('ele enviar o id do produto') do
  @product_delete = @request.product_delete(@request.find_product[17]['id'])
  
end

Entao('o produto sera excluido') do
  expect(@product_delete.code).to eql (200)
  expect(@product_delete.msg).to eql 'OK'
  expect(@product_delete.parsed_response['title']).to eql "MBJ Women's Solid Short Sleeve Boat Neck V "
  expect(@product_delete.parsed_response['price']).to eql (9.85)
  expect(@product_delete.parsed_response['description']).to eql '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem'
  expect(@product_delete.parsed_response["women's clothing"])

end