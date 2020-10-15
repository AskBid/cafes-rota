class Image < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: "image %{attribute} must be given" }
end
