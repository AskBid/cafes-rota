class ApplicationController < ActionController::Base
	#gives access to the methods in views
	helper_method :user_is_authenticated, :current_user, :today

	def home
	end

	private

	def today
    return Date.today.strftime("%A").downcase
  end

	def user_is_authenticated
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end
