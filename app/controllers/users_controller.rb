class UsersController < ApplicationController
  
	def show
		@user = User.find(params[:id])
	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      # We can omit the user_path in the redirect, writing simply redirect_to @user to redirect to the user show page.
      flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
end
