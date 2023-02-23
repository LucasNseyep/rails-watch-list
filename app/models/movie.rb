class Movie < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 10 }
end
