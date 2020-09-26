class SessionsController < ApplicationController
	def destroy
		session.clear
		redirect_to '/'
	end

	#new happens automagically

	def create
		user = User.find_by(name: session_params[:name]) || User.find_by(email: session_params[:email])
		if user && user.authenticate(session_params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user.slug)
		else
			flash[:alert] = [['You need to Signup or perhaps you entered wrong credentials? Try again!']]
			redirect_to login_path
		end
	end

	def omniauth
		user = User.from_omniauth(auth)
		if user.valid?
			session[:user_id] = user.id
			redirect_to user_path(user.slug)
		else
			flash[:alert] = user.errors.messages.map {|k, m| m}
			redirect_to login_path
		end
	end

	private

	def session_params
		params.require(:user).permit(:name, :email, :password)
	end
 
  def auth
    request.env['omniauth.auth']
  end

end
