module Products
  include HTTParty
  base_uri 'https://fakestoreapi.com/products'
  format :json
  headers 'Content-Type': 'application/json'
end