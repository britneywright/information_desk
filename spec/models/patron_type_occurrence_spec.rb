require 'rails_helper'

RSpec.describe PatronTypeOccurrence, type: :model do
  before :each do
    @patron = PatronType.create(id: 1, name: "Phone Calls")
    @timespan = Timespan.create(id: 1, starttime: "7:00 a.m.", endtime: "7:30 a.m.")
    @occurrence = PatronTypeOccurrence.create(patron_type: @patron, timespan: @timespan, occurrences: 3)
  end
  it "does not have less than 0 occurrences" do
    @occurrence.occurrences = -2
    expect(@occurrence).to be_invalid
  end
end
