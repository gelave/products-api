class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: false, greater_then_or_equal_to: 0}
end
