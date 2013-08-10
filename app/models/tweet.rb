class Tweet < ActiveRecord::Base
	belongs_to :user

	validates :tweet_data, :length => {:minimum => 1, :maximum => 140}

	scoped_search :on => [:tweet_data]
end
