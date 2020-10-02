class CafesController < ApplicationController
	def index
		@cafes = Cafe.all
	end

	def new
		@cafe = Cafe.new
		@cafe.links.build(name: 'website')
		
		3.times do 
			@cafe.links.build(name: 'other Url')
		end

		8.times do 
			@cafe.images.build(name: 'google')
		end

		8.times do 
			@cafe.images.build(name: 'other websites')
		end
	end
end
