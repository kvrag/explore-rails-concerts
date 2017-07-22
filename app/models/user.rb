class User < ApplicationRecord
  has_many :attendances, as: :attendee
  has_many :concerts, through: :attendances, source: :concert_id

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end