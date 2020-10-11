class NotesController < ApplicationController
	def index
		@cafe = Cafe.find_by_slug(params[:cafe_slug])
		@notes = Note.by_cafe(@cafe)
		@user_notes = Note.by_cafe(@cafe).by_user(@current_user) if user_is_authenticated
	end

	def new
	end

	def create
	end
end
