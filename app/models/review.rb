class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
end

  # has_many :reviews, dependent: :destroy
  # validates :category, inclusion: { in: ["", "italian", "japanese", "french", "belgian"] }
  # validates :name, :address, :category, presence: true
