require 'rails_helper'

RSpec.describe RequestCategory, type: :model do
  it "is valid with a name" do
    category = RequestCategory.new(name: "Classes/Academic Info.")
    expect(category).to be_valid
  end
  it "is invalid without a name" do
    category = RequestCategory.new(name: nil)
    expect(category).to be_invalid
  end
end
