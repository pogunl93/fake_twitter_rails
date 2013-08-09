class Tweet < ActiveRecord::Base
	belongs_to :user

	scoped_search :on => [:tweet_data]
end
