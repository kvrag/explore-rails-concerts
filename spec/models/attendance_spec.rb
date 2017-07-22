require 'rails_helper'

describe Attendance do 
  let (:concert) { Concert.create(band: "Kansas", venue: "Mines of Moria", date: Date.today, start_time: "7:00 PM") }
  let (:user) { User.create(first_name: "Kristina", last_name: "Vragovic", email: "kvrag@kvrag.com", password: "kvrag") }
  let (:attendance) { Attendance.create(attendee: user, concert: concert) }

  it "belongs to an attendee" do 
    expect(attendance.attendee).to eq user
  end

  it "belongs to a concert" do 
    expect(attendance.concert).to eq concert
  end


end