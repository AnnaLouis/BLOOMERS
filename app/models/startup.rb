class Startup < ApplicationRecord
  belongs_to :user
  has_many :batchs
  has_many :candidatures, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :programs, through: :batchs
  validates :short_description
  validates :name
  validates :date_creation
end
