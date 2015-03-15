require 'rails_helper'

RSpec.describe PatronType, type: :model do
  it "is valid with a name" do
    patron = PatronType.new(name: "Phone Calls")
    expect(patron).to be_valid
  end
  it "is invalid without a name" do
    patron = PatronType.new(name: nil)
    expect(patron).to be_invalid
  end
end
