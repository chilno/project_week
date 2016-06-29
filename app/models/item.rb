class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_sub
  has_many :sub_categories, through: :item_sub
  mount_uploader :image, ImageUploader

  validates :name, :price, :description, :user_id,  presence: true

end
