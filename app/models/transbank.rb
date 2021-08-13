class Transbank < ApplicationRecord
  has_one :payment, as: :paymentable
  belongs_to :transbankable, polymorphic: true
end
