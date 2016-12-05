class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :bloomer
  validates :user_id, uniqueness: { scope: :bloomer_id }
  validates :user_id, presence: true
  validates :bloomer_id, presence: true
end
