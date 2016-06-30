class UsersController < ApplicationController
  def index
  end

  def create
  	@user = User.create(user_params)
  	unless @user.errors.any?
  		session[:id] = @user.id
  		redirect_to '/items'
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to '/users/new'
  	end
  end

  def destroy
  end

  def new
  	
  end

  def show
  	@products = current_user.items
  	@categories = Category.all
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :phone, :city, :state, :password, :password_confirmation)
  end
end
