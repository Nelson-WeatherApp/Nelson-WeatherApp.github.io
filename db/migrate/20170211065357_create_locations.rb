class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.text :title
      t.text :desccription
      t.text :wardrobe

      t.timestamps
    end
  end
end
