class VisitsController < ApplicationController
  def index
  	@user = User.find_by_slug(user_params[:user_slug])
  	@visits = @user.visits
  end

  def new
  	@cafes = Cafe.all
  end

  def create
    # binding.pry
    redirect_to new_user_visit_path(current_user.slug)
  end

  private

  def user_params
  	params.permit(:user_slug)
  end
end
