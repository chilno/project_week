class DeleteAndAddCategoyTable < ActiveRecord::Migration
  def change
  	drop_table :main_categories
  end
end
