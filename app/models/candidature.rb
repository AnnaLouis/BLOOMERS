class Candidature < ApplicationRecord
  belongs_to :startup
  belongs_to :program
  has_one :bloomer, through: :program
  validates :team, presence: true
  validates :your_problem, presence: true
  validates :your_solution, presence: true
  validates :your_market, presence: true
  validates :phone_number, presence: true
end
