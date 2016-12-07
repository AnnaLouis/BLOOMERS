class Incubation < ApplicationRecord
  belongs_to :startup
  belongs_to :batch
  has_one :program, through: :batch
  has_one :bloomer, through: :program

  validates :startup, presence: true
  validates :batch, presence: true
  validates :startup_id, uniqueness: { scope: :batch_id }
end
