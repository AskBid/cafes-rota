class Note < ApplicationRecord
	belongs_to :user
	belongs_to :cafe

	validates_length_of :text, :maximum => 180

	scope :by_cafe, -> (cafe) {where('cafe_id = ?', cafe.id)}
	scope :by_user, -> (user) {where('user_id = ?', user.id)}
end
