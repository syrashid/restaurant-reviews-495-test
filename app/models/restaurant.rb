class Restaurant < ApplicationRecord
  has_one :chef, dependent: :destroy
end
