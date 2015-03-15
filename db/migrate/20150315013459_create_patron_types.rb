class CreatePatronTypes < ActiveRecord::Migration
  def change
    create_table :patron_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
