class Bloomer < ApplicationRecord
  belongs_to :user
  has_many :programs
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :country, presence: true
  CATEGORIES = %w(Incubateur Accélérateur Coworking)
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} n'est pas une catégorie valide." }
  validates :website, presence: true, format: { with: [(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~=]{2,256}\.[a-z]{2,6}\b }
  validates :email, presence: true, format: { with: ^([\w\.\-_]+)?\w+@[\w-_]+(\.\w+){1,}$ }
  validates :address, presence: true,
  validates :speciality, presence: true,
  validates :date_creation, presence: true,
  validates :description: true,
  validates :twitter_account, presence: true,
end
