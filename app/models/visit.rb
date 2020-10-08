class Visit < ApplicationRecord
	belongs_to :user
	belongs_to :cafe

	scope :by_user_today, -> (user_id, todays_date) {where("user_id = ? AND last_visited = ?", user_id, todays_date) }
	scope :by_user_and_cafe, -> (user, cafe) {where("user_id = ? AND cafe_id = ?", user.id, cafe.id)}
end