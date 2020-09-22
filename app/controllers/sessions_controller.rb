class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	#new happens automagically

	def create
		user = User.find_by(name: params[:user][:name]) || User.find_by(email: params[:user][:email])
		binding.pry
	end
end
