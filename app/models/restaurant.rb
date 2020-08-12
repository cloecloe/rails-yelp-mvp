class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end


# should destroy child reviews when destroying self
