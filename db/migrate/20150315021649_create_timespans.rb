class CreateTimespans < ActiveRecord::Migration
  def change
    create_table :timespans do |t|
      t.string :name
      t.string :starttime
      t.string :endtime

      t.timestamps null: false
    end
  end
end
