class Batch < ApplicationRecord
  belongs_to :startups
  belongs_to :programs
  belongs_to :bloomer, through: :programs
  validates :name, presence: true, uniqueness: true
  validates :batch_start, presence: true
  validates :batch_end, presence: true
end
