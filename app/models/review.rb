class Review < ApplicationRecord
  # REFERENCES
  belongs_to :bloomer
  belongs_to :startup
  # VALIDATIONS
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..3).to_a,
    message: "%{value} is not a correct rate" }
  validates :rating, numericality: { only_integer: true }
end
