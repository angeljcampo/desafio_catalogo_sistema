class Paypal < ApplicationRecord
  has_one :payment, as: :paymentable
end
