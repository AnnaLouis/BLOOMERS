class Startup < ApplicationRecord
  # REFEREJCES
  belongs_to :user
  has_many :batchs
  has_many :candidatures, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :programs, through: :batchs
  has_many :bloomers, through: :programs
  # CLOUDINARY & ATTACHINARY
  has_attachments :photos, maximum: 3
  # VALIDATIONS
  validates :name, presence: true
  validates :short_description, presence: true
  validates :date_creation, presence: true
end
