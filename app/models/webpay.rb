class Webpay < ApplicationRecord
  has_one :transbank, as: :transbankable
end
