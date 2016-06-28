class SubCategory < ActiveRecord::Base
  belongs_to :main_category
  has_many :item_sub
  has_many :items, through: :item_sub
end
