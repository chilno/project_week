class ItemSub < ActiveRecord::Base
  belongs_to :item
  belongs_to :sub_category
end
