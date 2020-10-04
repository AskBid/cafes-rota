class VisitsController < ApplicationController
  def index
    this_user
  	@visits = @user.visits
  end

  def new
    this_user
  	@cafes = @user.missing_cafes
  end

  def create
    this_user
    @user.cafe_ids << visit_params[:cafe_id]
    binding.pry
    redirect_to new_user_visit_path(@user.slug)
  end

  def update
    binding.pry
  end

  private

  def this_user
    @user = User.find_by_slug(user_params[:user_slug])
  end 

  def user_params
  	params.permit(:user_slug)
  end

  def visit_params
    params.require(:visit).permit(:cafe_id)
  end
end
