class Booking < ApplicationRecord
  belongs_to :candidature
  belongs_to :bloomer
  LIST_STATUS_BOOKING = ["pending", "accepted", "declined"]
  validates :status, inclusion: { in: LIST_STATUS_BOOKING  }
  validates :start_date, presence: true, allow_blank: false, date: { after: Proc.new { Date.current }, message: 'Doit être dans le futur' },
   on: :create
  validates :end_date, presence: true, allow_blank: false, date: { after: :start_date, message: 'Doit être après la date de début'  }
end
