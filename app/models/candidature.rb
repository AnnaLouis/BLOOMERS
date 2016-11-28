class Candidature < ApplicationRecord
  belongs_to :startup
  belongs_to :program
  validates :status, presence: true
  validates :start_date, presence: true
  validates :preselection_date, presence: true
  validates :end_date, presence: true

end
