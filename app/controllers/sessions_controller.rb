class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	#new happens automagically

	def create
		binding.pry
	end
end
