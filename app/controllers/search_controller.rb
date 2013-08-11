class SearchController < ApplicationController
	layout "application"

	def index 
		@tweets = Tweet.search_for(params[:search_query])
		@users = User.search_for(params[:search_query])
	end

end
