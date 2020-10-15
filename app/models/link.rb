class Link < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: "%{attribute} must be givensdds" }
end