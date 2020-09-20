class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	def new
	end
end
