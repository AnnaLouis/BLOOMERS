class Bloomer < ApplicationRecord
  # REFERENCES
  belongs_to :user
  has_many :programs
  has_many :reviews
  has_many :candidatures, through: :programs
  has_many :batches, through: :programs
  has_many :startups, through: :batches
  # IMG ATTACHINARY & CLOUDINARY
  has_attachments :photos, maximum: 8
  has_attachment :logo
  # VALIDATIONS
  validates :name, presence: true, uniqueness: true

  CATEGORIES = %w(Incubateur Accélérateur Coworking)
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} n'est pas une catégorie valide." }
  validates :website, format: { with: /[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~=]{2,256}\.[a-z]{2,6}\b/ }
  validates :email, format: { with: /\A.*@.*\.\w*/ }
  validates :speciality, presence: true
  validates :date_creation, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  searchkick

  def search_data
    {
      city: city,
      category: category,
      speciality: speciality,
      program_prices: programs.pluck(:price)
    }
  end

end
