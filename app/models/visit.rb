class Visit < ApplicationRecord
	belongs_to :user
	belongs_to :cafe

	scope :open_cafe_visits, -> { where("last_visited > 0") }
	scope :user_visits, -> (u) { joins(:user).where("name = ?", u) }
end