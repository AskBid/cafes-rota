class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		# binding.pry
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			# binding.pry
			flash[:alert] = user.errors.messages.map {|k, m| m}
			redirect_to new_user_path
		end 
	end

	def show
		@user = User.find_by_slug(params[:slug])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end
