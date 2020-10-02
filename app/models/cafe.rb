class Cafe < ApplicationRecord
	include Slug

	has_many :visits
	has_many :users, through: :visits
	has_many :links
	has_many :images
	has_many :notes

	validates_uniqueness_of :name, {message: "%{value} name already exist"}

	def main_image
		self.images.sample
	end
end
