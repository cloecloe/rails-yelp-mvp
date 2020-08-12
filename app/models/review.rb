class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
end
