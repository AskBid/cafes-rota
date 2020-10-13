class VisitsController < ApplicationController
  def index
    @user = this_user
    @visits_today = Visit.by_user_today(@user.id, Date.today)
  	@visits = @user.visits.order(:last_visited)
  end

  def new
    @user = this_user
    if user_is_authenticated && @user == current_user
    	@cafes = @user.missing_cafes
    else
      redirect_to user_visits_path(@user.slug)
    end
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
    visit = Visit.find_by(id: visit_params[:id])
    if !visit_params[:last_visited].empty?
      visit.last_visited = Date.parse(visit_params[:last_visited])
    else
      visit.last_visited = nil
    end
    visit.save
    redirect_to user_visits_path(visit.user.slug)
  end

  def destroy
    visit = Visit.find(visit_params[:id])
    visit.delete
    redirect_to cafe_path(this_cafe.slug)
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
    params.require(:visit).permit(:cafe_id, :last_visited, :id)
  end
end
