class TweetController < ApplicationController
	layout "application"

	def new 

	end 

	def create 
		@tweet = Tweet.create(:tweet_data => params[:tweet_data])
		@user = User.find(params[:id])
		@user.tweets << @tweet
		redirect "/user/#{current_user.id.to_s}"
	end 

end 