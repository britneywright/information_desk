class CreateRequestCategoryOccurrences < ActiveRecord::Migration
  def change
    create_table :request_category_occurrences do |t|
      t.belongs_to :request_category, index: true
      t.belongs_to :timespan, index: true
      t.belongs_to :shift
      t.integer :occurrences, default: 0

      t.timestamps null: false
    end
    add_foreign_key :request_category_occurrences, :request_categories
    add_foreign_key :request_category_occurrences, :timespans
  end
end
