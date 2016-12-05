class Candidature < ApplicationRecord
  belongs_to :startup
  belongs_to :program
  # validates :team, presence: true
  # validates :your_problem, presence: true
  # validates :your_solution, presence: true
  # validates :your_market, presence: true
  # validates :phone_number, presence: true
  LIST_STATUS = ["new", "to meet", "rdv", "short list", "accepted", "refused"]
  validates :status, inclusion: { in: LIST_STATUS, message: "%{value} n'est pas une catégorie valide." }
end
