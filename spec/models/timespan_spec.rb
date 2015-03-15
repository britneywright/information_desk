require 'rails_helper'

RSpec.describe Timespan, type: :model do
  before :each do
    @span = Timespan.create(starttime: "7:00 a.m.", endtime: "7:30 a.m.")
  end
  it "is valid with a start time and end time" do
    expect(@span).to be_valid
  end
  it "is invalid without a start time" do
    @span.starttime = nil
    expect(@span).to be_invalid
  end
  it "is invalid without an end time" do
    @span.endtime = nil
    expect(@span).to be_invalid
  end
  it "is named after the start time and end time" do
    expect(@span.name).to eq "7:00 a.m. - 7:30 a.m."
  end
end
