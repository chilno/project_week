class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end
  def create

  	@products = Item.new(item_params)
  	if @products.save
  		redirect_to "/users/#{current_user.id}"
  	else
  		flash[:errors] = @products.errors.full_messages
  		redirect_to "/users/#{current_user.id}"
  	end
  end

  def update
  	@product = Item.find(params[:id])
  	@product.update(item_params)
  	if @product.save
  		redirect_to "/users/#{current_user.id}"
  	else
  		flash[:errors] = @product.errors.full_messages
  		redirect_to "/users/#{current_user.id}"
  	end

  end

  def destroy
  	@product = Item.find(params[:id])
  	@product.destroy
  	redirect_to "/users/#{current_user.id}"
  end

  def show
  end

  private

  def item_params
    @category = Category.find_by(name: params[:category])
  	params.require(:item).permit(:name, :price, :description, :user_id,  :image).merge(category_id: @category.id)
  end
end
