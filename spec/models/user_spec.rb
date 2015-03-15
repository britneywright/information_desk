require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(
      firstname: "Jane",
      lastname: "Dog",
      email: "example@gmu.edu",
      password: "Test2468"
    )
  end
  it "is valid with a firstname, lastname, email address and password" do
    expect(@user).to be_valid
  end
  it "has a unique email address" do
   @user2 = User.new(
      firstname: "John",
      lastname: "Dog",
      email: "example@gmu.edu",
      password: "Test2468",
    )
    expect(@user2).to be_invalid
  end
  it "must have a properly formatted email address" do
    @user.email = "test.com"
    expect(@user).to be_invalid
  end
end
