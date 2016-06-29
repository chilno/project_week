class SessionsController < ApplicationController
  def new
  end

  def index
  	
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user and @user.authenticate(params[:password])
  	  session[:id] = @user.id
  	  redirect_to "/items"
  	else
  	  flash[:errors] = ["Username or Password is Invalid"]
  	  redirect_to '/users/new'
  	end
  end
end
