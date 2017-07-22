class Attendance < ApplicationRecord
  belongs_to :user, foreign_key: :attendee_id
  belongs_to :concert
end
