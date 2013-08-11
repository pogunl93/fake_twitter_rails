class TweetController < ApplicationController
	layout "application"

	def create_tweet
		@tweet = Tweet.create(tweet_params)
		@user = User.find(current_user.id.to_s)
		@user.tweets << @tweet
		if @tweet.save
			flash[:notice] = "Your tweet was created successfully"
		else
			flash[:notice] = "There was a problem creating your tweet"
		end
		redirect_to "/user/#{current_user.id.to_s}"
	end

	private

	def tweet_params
		params.require(:tweet).permit :tweet_data
	end

end
