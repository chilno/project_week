class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_sub
  has_many :sub_categories, through: :item_sub
end
