class Payment < ApplicationRecord
  belongs_to :order
  belongs_to :paymentable, polymorphic: true
end
