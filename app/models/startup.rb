class Startup < ApplicationRecord
  # REFEREJCES
  belongs_to :user
  has_many :batches
  has_many :candidatures, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :programs, through: :batches
  has_many :incubations
  has_many :batches, through: :incubations
  has_many :bloomers, through: :programs
  # CLOUDINARY & ATTACHINARY
  has_attachments :photos, maximum: 3
  has_attachment :logo
  # VALIDATIONS
  validates :name, presence: true
  validates :short_description, presence: true
  validates :date_creation, presence: true
end
