class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	def new
		@user = User.new
	end

	def create
		binding.pry
	end
end
