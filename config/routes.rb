FakeTwitter::Application.routes.draw do

  root :to => "home#news_feed"

  get "sign_out" => "session#destroy", :as => "sign_out"
  post "new_tweet" => "tweet#create_tweet"
  get "search" => "search#index"

  resources :user
  resources :session
  resources :tweet

end
