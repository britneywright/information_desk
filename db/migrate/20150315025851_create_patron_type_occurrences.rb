class CreatePatronTypeOccurrences < ActiveRecord::Migration
  def change
    create_table :patron_type_occurrences do |t|
      t.belongs_to :patron_type, index: true
      t.belongs_to :timespan, index: true
      t.integer :occurrences

      t.timestamps null: false
    end
    add_foreign_key :patron_type_occurrences, :patron_types
  end
end
