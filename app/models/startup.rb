class Startup < ApplicationRecord
  belongs_to :user
  has_many :batchs
  has_many :candidatures, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :programs, through: :batchs
  has_many :bloomers, through: :programs
  validates :name, presence: true
  validates :short_description, presence: true
  validates :date_creation, presence: true
end
