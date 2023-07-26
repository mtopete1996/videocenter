class Rental < ApplicationRecord
  # Associations
  belongs_to :customer
  belongs_to :movie

  # Validations
  validates :price, :borrow_date, :return_date, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :return_date, date: { after_to: :borrow_date }
end
