class Customer < ApplicationRecord
  # Validations
  validates :name, :phone, presence: true
end
