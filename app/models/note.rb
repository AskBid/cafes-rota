class Note < ApplicationRecord
	belongs_to :user
	belongs_to :cafe

	scope :by_cafe, -> (cafe) {where('cafe_id = ?', cafe.id)}
	scope :by_user, -> (user) {where('user_id = ?', user.id)}
end
