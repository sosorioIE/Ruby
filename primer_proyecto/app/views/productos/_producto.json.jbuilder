json.extract! producto, :id, :name, :description, :reference, :price, :created_at, :updated_at
json.url producto_url(producto, format: :json)
