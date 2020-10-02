class Image < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: "%{attribute} must be given" }
end
