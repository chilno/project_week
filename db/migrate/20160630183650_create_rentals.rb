class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :duration
      t.integer :price
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
