class NotesController < ApplicationController
	def index
		@cafe = this_cafe
		@notes = Note.by_cafe(@cafe)
		@user_notes = Note.by_cafe(@cafe).by_user(current_user) if user_is_authenticated
	end

	def new
		cafe = this_cafe
		@note = cafe.notes.build
		@note.user = current_user
	end

	def create
		@note = Note.new(note_params)
		if @note.save
			redirect_to cafe_notes_path(@note.cafe.slug)
		else
			flash[:alert] = @note.errors.messages.map {|k, m| m}
			render 'new'
		end
	end

	private

	def this_cafe
		Cafe.find_by_slug(params[:cafe_slug])
	end

	def note_params
		params.require(:note).permit(:text, :cafe_id, :user_id)
	end
end
