class CreateTimespans < ActiveRecord::Migration
  def change
    create_table :timespans do |t|
      t.string :name
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps null: false
    end
  end
end
