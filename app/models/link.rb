class Link < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: " link %{attribute} must be given" }
end