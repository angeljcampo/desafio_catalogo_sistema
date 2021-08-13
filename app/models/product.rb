class Product < ApplicationRecord
  validates :name, :description, :images, :stock, presence: true
  has_many_attached :images
  belongs_to :category, polymorphic: true, optional: true
end
