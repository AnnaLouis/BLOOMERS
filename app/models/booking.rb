class Booking < ApplicationRecord
  belongs_to :candidature
  belongs_to :bloomer
end
