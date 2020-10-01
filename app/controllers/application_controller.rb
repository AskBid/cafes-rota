class ApplicationController < ActionController::Base
	#gives access to the methods in views
	helper_method :user_is_authenticated, :current_user

	def home
	end

	private

	def user_is_authenticated
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end
