class UserController < ApplicationController
	layout "application"

	def new

	end 

	def create
		if User.create(user_params)
			flash[:notice] = "Your account has been successfully created"
		else 
			flash[:notice] = "There was a problem creating your account"
		end 
		redirect_to root_path
	end 

	def edit 

	end 

	def update 

	end 

	def show

	end 

	def index

	end 

	private

	def user_params 
		params.require(:user).permit :fname, :lname, :username, :email, :password, :bio, :url, :city, :state
	end 

end 
