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
		@user = User.find(params[:id])
	end 

	def index

	end 

	def create_tweet
		@tweet = Tweet.create(tweet_params)
		@user = User.find(current_user.id.to_s)
		@user.tweets << @tweet
		redirect_to "/user/#{current_user.id.to_s}"
	end

	private

	def user_params 
		params.require(:user).permit :fname, :lname, :username, :email, :password, :bio, :url, :city, :state
	end 

	def tweet_params
		params.require(:tweet).permit :tweet_data
	end
end 
