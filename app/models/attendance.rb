class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: 'User', foreign_key: :user_id
  belongs_to :concert

  validates_uniqueness_of :user_id, scope: :concert_id   
end
