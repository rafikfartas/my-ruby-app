class CategoryProduct < ApplicationRecord
  self.table_name = "categories_products"
  belongs_to :product
  belongs_to :category
end
