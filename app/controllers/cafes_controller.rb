class CafesController < ApplicationController
	def index
		@cafes = Cafe.all
	end

	def new
		@cafe = Cafe.new
		@cafe.links.build(name: 'website')
		@cafe.populate_new_cafe
	end

	def create
		cafe = Cafe.new(cafe_params)
		binding.pry
	end

	private

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