class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  validates :name, :address, presence: true
end


# should destroy child reviews when destroying self
