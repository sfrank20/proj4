class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end
  
  def new
  	@user = User.new
  	@title = "Sign up"
  end
  
  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome, you are now eligible to take a survey."
  		redirect_to @user
  	else
  		@title = "Sign up"
  		render 'new'
  	end
  end
  
  def edit
  	@user = User.find(params[:id])
  	@title = "Edit user"
  end
  
  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
  		flash[:success] = "Profile updated."
  		redirect_to @user
  	else
  		@title = "Edit user"
  		render 'edit'
  	end
  end

  def index
  	@title = "All users"
  	@users = User.all
  end
  
  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end

end
