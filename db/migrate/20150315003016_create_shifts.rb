class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.date :date
      t.string :location
      t.datetime :starttime
      t.datetime :endtime
    end
  end
end
