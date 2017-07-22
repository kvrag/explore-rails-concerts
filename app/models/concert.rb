class Concert < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :attendee

  validates :band, :venue, :date, :start_time, presence:true

  def formatted_date
    self.date.strftime("%m/%d/%Y")
  end
end