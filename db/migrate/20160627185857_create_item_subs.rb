class CreateItemSubs < ActiveRecord::Migration
  def change
    create_table :item_subs do |t|
      t.references :item, index: true, foreign_key: true
      t.references :sub_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
