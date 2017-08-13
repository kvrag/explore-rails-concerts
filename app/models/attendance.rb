class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :concert

  validates_uniqueness_of :attendee_id, scope: :concert_id   
end
