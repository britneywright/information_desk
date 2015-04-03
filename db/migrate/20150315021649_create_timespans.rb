class CreateTimespans < ActiveRecord::Migration
  def change
    create_table :timespans do |t|
      t.string :name
      t.time :starttime
      t.time :endtime

      t.timestamps null: false
    end
  end
end
