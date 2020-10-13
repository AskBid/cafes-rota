class NotesController < ApplicationController
	def index
		@cafe = this_cafe
		@notes = Note.by_cafe(@cafe)
		@user_notes = Note.by_cafe(@cafe).by_user(current_user) if user_is_authenticated
	end

	def new
		@cafe = this_cafe
		@note = @cafe.notes.build
		@note.user = current_user
	end

	def create
		#find avoids duplicates
		note = Note.find_or_create_by(note_params)

		redirect_to cafe_notes_path(note.cafe.slug)
	end

	private

	def this_cafe
		Cafe.find_by_slug(params[:cafe_slug])
	end

	def note_params
		params.require(:note).permit(:text, :cafe_id, :user_id)
	end
end
