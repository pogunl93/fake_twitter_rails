class SessionController < ApplicationController
	layout "application"

	def new 

	end 

	def create
		user = User.authenticate(params[:username], params[:password])
		if user
			session[:user_id] = user.id
			redirect_to root_path
			flash[:notice] = "You are signed in"
		else 
			flash[:notice] = "Sign In Failed, please try again"
			redirect_to new_session_path
		end
	end 

	def destroy 
		session[:user_id] = nil
		redirect_to root_path
		flash[:notice] = "You have been successfully signed out"
	end 
end 