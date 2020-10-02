class CafesController < ApplicationController
	def index
		@cafes = Cafe.all
	end

	def new
	end
end
