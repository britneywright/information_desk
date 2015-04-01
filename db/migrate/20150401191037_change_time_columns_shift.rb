class ChangeTimeColumnsShift < ActiveRecord::Migration
  def change
    remove_column :shifts, :starttime
    remove_column :shifts, :endtime
    remove_column :timespans, :starttime
    remove_column :timespans, :endtime
    add_column :shifts, :starttime, :time
    add_column :shifts, :endtime, :time
    add_column :timespans, :starttime, :time
    add_column :timespans, :endttime, :time
  end
end
