class Booking < ApplicationRecord
  belongs_to :candidature
  belongs_to :bloomer
  # validates :start_date, presence: true, allow_blank: false, date: { after: Proc.new { Date.current }, message: 'Doit être dans le futur' },
  #  on: :create
  # validates :end_date, presence: true, allow_blank: false, date: { after: :starts_at, message: 'Doit être après la date de début'  }
end
