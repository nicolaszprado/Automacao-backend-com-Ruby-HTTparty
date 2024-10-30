class Product_Requests
  def find_product
    Products.get('')
  end

  def product_create(title, price, description, category)
      Products.post(
        '/',
        body: {
          title: title,
          price: price,
          description: description,
          category: category,
          image: ""
    }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
  end
  

  def product_update(id, title, price, description, category)
    Products.put('/' + id.to_s, body: {
      title: title,
      price: price,
      description: description,
      category: category,
      image: ""
    }.to_json)
  end


  def product_delete(id)
    Products.delete('/'+ id.to_s)
  end

  
end
  




