class CreateRequestCategories < ActiveRecord::Migration
  def change
    create_table :request_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
