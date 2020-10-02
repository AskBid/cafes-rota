class CafesController < ApplicationController
	def index
		@cafes = Cafe.all
	end

	def new
		@cafe = Cafe.new
		@cafe.links.build(name: 'website')
		@cafe.links.build(name: 'other url')
		@cafe.links.build(name: 'other url')
		@cafe.links.build(name: 'other url')
		@cafe.links.build(name: 'other url')
	end
end
