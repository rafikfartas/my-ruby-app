class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  accepts_nested_attributes_for :category_products, reject_if: :all_blank, allow_destroy: true
end
