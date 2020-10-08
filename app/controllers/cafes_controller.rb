class CafesController < ApplicationController
	def index
		@cafes = Cafe.all.shuffle
	end

	def new
		@cafe = Cafe.new
		@cafe.populate_new_cafe
	end

	def create
		cafe = Cafe.new(cafe_params)
		if cafe.save
			redirect_to cafe_path(cafe.slug)
		else
			flash[:alert] = cafe.errors.messages.map {|k, m| m}
			redirect_to new_cafe_path
		end 
	end

	def show
		@cafe = Cafe.find_by_slug(params[:slug])
	end

	def location
		@location = params[:location]
		# @open_cafes = Cafe.open(today).by_location(@location)
		@cafes = Cafe.by_location(@location)
		
		render '/location'
	end

	private

	def location_params
		params.permit(:location)
	end

	def cafe_params
		params.require(:cafe).permit(
			:name,
			:location,
			:location_url,
			:description,
			links_attributes: [:name, :url],
			images_attributes: [:name, :url]
		)
	end
end