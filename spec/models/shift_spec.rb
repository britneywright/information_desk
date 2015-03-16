require 'rails_helper'

describe Shift do
  before :each do
    @user = User.create(
      firstname: "Jane",
      lastname: "Dog",
      email: "example@gmu.edu",
      password: "Test2468"
    )
    @first = Shift.create(
      date: Date.today, 
      location: "Johnson Center",
      starttime: "7:00 a.m.",
      endtime: "9:00 a.m.",
      user: @user
    )
  end
  it "has a valid factory" do
    expect(FactoryGirl.build(:shift)).to be_valid
  end
  it "is valid with date, location, start time, end time" do
    expect(@first).to be_valid
  end
  it "is invalid without a date" do
    shift = FactoryGirl.build(:shift, date: nil)
    expect(shift).to be_invalid
  end
  it "is invalid without a location" do
    shift = FactoryGirl.build(:shift, location: nil)
    expect(shift).to be_invalid
  end
  it "is invalid without a starttime" do
    shift = FactoryGirl.build(:shift, starttime: nil)
    expect(shift).to be_invalid
  end
  it "is invalid without an endtime" do
    shift = FactoryGirl.build(:shift, endtime: nil)
    expect(shift).to be_invalid
  end
  it "belongs to a specific user" do
   expect(@first.user).to eq @user 
  end
end
