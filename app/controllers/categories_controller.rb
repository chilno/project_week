class CategoriesController < ApplicationController

  def index
  	@categories = MainCategory.all
  	@recommended = Item.all.limit(3)
  	@items = Item.all.order("id desc").limit(6)
  end

  def show
  end
end
