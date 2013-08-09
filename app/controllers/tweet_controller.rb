class TweetController < ApplicationController
	layout "application"

	def index 
		@tweets = Tweet.where("tweet_data LIKE '%#{params[:search_query]}%'")
	end

end
