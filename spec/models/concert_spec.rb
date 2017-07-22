require 'rails_helper'

describe Concert do 
  let (:concert) { Concert.create(band: "Kansas", venue: "Mines of Moria", date: Date.today, start_time: "7:00 PM") }

  it "has a band name" do 
    expect(concert.band).to eq "Kansas"
  end

  it "has a venue" do 
    expect(concert.venue).to eq "Mines of Moria"
  end

  it "has a start time" do 
    expect(concert.start_time).to eq "7:00 PM"
  end

  describe ".formatted_date" do 
    it "returns the date of the concert in mm/dd/yyyy format" do

    expect(concert.formatted_date).to eq Date.today.strftime("%m/%d/%Y")
    end
  end

end