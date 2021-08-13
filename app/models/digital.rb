class Digital < ApplicationRecord
  has_many :image
  has_many :products, as: :category
end
