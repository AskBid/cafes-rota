class Image < ApplicationRecord
	belongs_to :cafe

	validates :url, presence: { message: "image %{attribute} must be given" }
	validates_uniqueness_of :url, {message: "image %{value} already exist"}
end
