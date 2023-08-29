class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  accepts_nested_attributes_for :categories
end
