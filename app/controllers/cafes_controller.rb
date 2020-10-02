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
		params.require(:cafe).permit(links_attributes: [:url])
	end
end
