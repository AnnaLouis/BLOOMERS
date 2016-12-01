class Program < ApplicationRecord
  # REFERENCES
  belongs_to :bloomer
  has_many :batches
  has_many :startups, through: :batches
  has_many :candidatures
  # VALIDATION
  validates :name, presence: true
  validates :short_description, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :price, presence: true
  validates :equity, presence: true
  validates :candidature_open, presence: true
  validates :candidature_close, presence: true
end
