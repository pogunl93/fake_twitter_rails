FakeTwitter::Application.routes.draw do

  root :to => "home#news_feed"

  resources :user

end
