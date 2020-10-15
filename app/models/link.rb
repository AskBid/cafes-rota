class Link < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: " link %{attribute} must be given" }
	validates_uniqueness_of :url, {message: "link %{value} already exist"}
end