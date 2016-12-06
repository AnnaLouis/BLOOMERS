class Candidature < ApplicationRecord
  belongs_to :startup
  belongs_to :program
  LIST_STATUS = ["new", "to meet", "rdv", "short list", "accepted", "refused"]
  validates :status, inclusion: { in: LIST_STATUS, message: "%{value} n'est pas une catégorie valide." }
  validates :program_id, presence: true
  validates :startup_id, presence: true
end
