class AddCategoryCol < ActiveRecord::Migration
  def change
  	add_reference :items, :category
  end
end
