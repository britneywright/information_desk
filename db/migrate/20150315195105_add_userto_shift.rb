class AddUsertoShift < ActiveRecord::Migration
  def change
    add_reference :shifts, :user, index: true
  end
end
