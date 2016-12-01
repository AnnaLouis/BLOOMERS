class Incubation < ApplicationRecord
  belongs_to :startup
  belongs_to :batch
end
