class Batch < ApplicationRecord
  belongs_to :program
  has_one :bloomer, through: :program
  validates :name, presence: true, uniqueness: true
  validates :batch_start, presence: true
  validates :batch_end, presence: true
end
