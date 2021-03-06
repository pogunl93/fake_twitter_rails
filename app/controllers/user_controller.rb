class UserController < ApplicationController
	layout "application"

	def new

	end 

	def create
		user = User.create(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to root_path
			flash[:notice] = "Your account has been successfully created and you are now signed in"
		else 
			flash[:notice] = "There was a problem creating your account"
			redirect_to new_user_path
		end 
	end 

	def edit 

	end 

	def update 

	end 

	def show
		@user = User.find(params[:id])
		@tweets = Tweet.where(:user_id => params[:id])
	end 

	def index
		@users = User.all
	end 

	private

	def user_params 
		params.require(:user).permit :fname, :lname, :username, :email, :password, :bio, :url, :city, :state, :image
	end 

end 
