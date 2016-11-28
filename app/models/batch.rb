class Batch < ApplicationRecord
  belongs_to :startups
  belongs_to :programs
  belongs_to :bloomer, through: :programs
  validates :name, dependent: :destroy
  validates :batch_start, dependent: :destroy
  validates :batch_end, dependent: :destroy

end
