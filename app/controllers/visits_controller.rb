class VisitsController < ApplicationController
  def index
    @user = this_user
  	@visits = @user.visits
  end

  def new
    @user = this_user
  	@cafes = @user.missing_cafes
  end

  def create
    user = this_user
    user.cafes << this_cafe
    
    redirect_to new_user_visit_path(user.slug)
  end

  def edit
    @visit = Visit.find_by(id: params.permit(:id)[:id].to_i)
  end

  def update
    binding.pry
  end

  private

  def this_user
    User.find_by_slug(user_params[:user_slug])
  end 

  def this_cafe
    Cafe.find(visit_params[:cafe_id])
  end 

  def user_params
  	params.permit(:user_slug)
  end

  def visit_params
    params.require(:visit).permit(:cafe_id)
  end
end
