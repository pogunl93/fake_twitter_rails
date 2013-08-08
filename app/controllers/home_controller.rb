class HomeController < ApplicationController
	layout 'application'

require 'rubygems'
require 'haml'

def news_feed
	@tweet = Tweet.all 
end 



end
