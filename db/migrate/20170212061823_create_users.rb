class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :password_hash
      t.text :location
      t.text :sex

      t.timestamps
    end
  end
end
