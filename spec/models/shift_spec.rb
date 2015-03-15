require 'rails_helper'

describe Shift do
  before :each do
    @first = Shift.create(
      date: Date.today, 
      location: "Johnson Center",
      starttime: "7:00 a.m.",
      endtime: "9:00 a.m.",
    )
  end
  it "is valid with date, location, start time, end time" do
    expect(@first).to be_valid
  end
  it "is invalid without a date" do
    @first.date = nil
    expect(@first).to be_invalid
  end
  it "is invalid without a location" do
    @first.location = nil
    expect(@first).to be_invalid
  end
  it "is invalid without a starttime" do
    @first.starttime = nil
    expect(@first).to be_invalid
  end
  it "is invalid without an endtime" do
    @first.endtime = nil
    expect(@first).to be_invalid
  end
end
