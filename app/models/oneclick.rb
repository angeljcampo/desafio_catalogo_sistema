class Oneclick < ApplicationRecord
  has_one :transbank, as: :transbankable
end
