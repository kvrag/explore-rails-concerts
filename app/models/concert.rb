class Concert < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances, source: :attendee_id

  validates :band, :venue, :date, :start_time, presence:true
end