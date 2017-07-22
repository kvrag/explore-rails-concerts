require 'rails_helper'

describe User do 
  let (:user) { User.create(first_name: "Kristina", last_name: "Vragovic", email: "kvrag@kvrag.com", password: "kvrag") }

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
