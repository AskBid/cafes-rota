class VisitsController < ApplicationController
  def index
  	@user = User.find_by_slug(user_params[:user_slug])
  	@visits = @user.visits
  end

  private

  def user_params
  	params.permit(:user_slug)
  end
end
