class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	#new happens automagically

	def create
		user = User.find_by(name: params[:user][:name]) || User.find_by(email: params[:user][:email])
		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect_to user
		else
			flash[:message] = 'You need to Signup or perhaps you entered wrong credentials? Try again!'
			redirect_to login_path
		end
	end
end
