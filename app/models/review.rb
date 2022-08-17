class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, :content, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5).to_a,
    message: "%{value} is not a valid bro" }
end
