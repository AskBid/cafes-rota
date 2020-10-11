class NotesController < ApplicationController
	def index
		@cafe = this_cafe
		@notes = Note.by_cafe(@cafe)
		@user_notes = Note.by_cafe(@cafe).by_user(current_user) if user_is_authenticated
	end

	def new
		@cafe = this_cafe
		binding.pry
		@note = @cafe.notes.build
		@note.user = current_user
	end

	def create
	end

	private

	def this_cafe
		Cafe.find_by_slug(params[:cafe_slug])
	end
end
