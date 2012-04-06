class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
	if @user.save
	  # do something here
	  flash[:success] = "Welcome to sample app"
	  redirect_to @user
	else
	  render 'new'
	end
  end
end
