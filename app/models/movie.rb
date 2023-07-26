class Movie < ApplicationRecord
  # Validations
  validates :title, :release_year, presence: true
end
