class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.date :date
      t.string :location
      t.time :starttime
      t.time :endtime
    end
  end
end
