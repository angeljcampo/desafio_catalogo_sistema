class Credit < ApplicationRecord
  has_one :transbank, as: :transbankable
end
