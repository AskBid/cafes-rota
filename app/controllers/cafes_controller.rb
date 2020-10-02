class CafesController < ApplicationController
	def index
		@cafes = Cafe.all
	end

	def new
		@cafe = Cafe.new
		@cafe.links.build(name: 'website')
		@cafe.populate_new_cafe
	end
end
