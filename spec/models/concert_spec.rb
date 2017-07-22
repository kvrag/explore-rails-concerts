require 'rails_helper'

describe Concert do 
  let (:concert) { Concert.create(band: "Kansas", venue: "Mines of Moria", date: "kvrag@kvrag.com", start_time: "7:00PM") }

  it "has a first name" do 
    expect(user.first_name).to eq "Kristina"
  end

  it "has a last name" do 
    expect(user.last_name).to eq "Vragovic"
  end

  describe ".full_name" do 
    it "returns the first and last name of the user as a single string" do

    expect(user.full_name).to eq "Kristina Vragovic"
    end
  end

end