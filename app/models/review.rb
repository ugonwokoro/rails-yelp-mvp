class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  RATINGS = (0..5).to_a
  validates :rating, inclusion: { in: RATINGS }, numericality: true
end



