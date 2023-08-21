json.extract! product, :id, :name, :description, :price, :category, :created_at, :updated_at
json.url admin_product_url(product, format: :json)
