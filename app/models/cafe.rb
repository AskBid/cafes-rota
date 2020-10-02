class Cafe < ApplicationRecord
	include Slug

	has_many :visits
	has_many :users, through: :visits
	has_many :links
	has_many :images
	has_many :notes

	validates_uniqueness_of :name, {message: "%{value} name already exist"}

	accepts_nested_attributes_for :links
	accepts_nested_attributes_for :images

	def main_image
		self.images.sample
	end

	def populate_new_cafe(url_times: 3, img_times: 8)
		url_times.times do 
			self.links.build(name: 'other URLs')
		end

		img_times.times do 
			self.images.build(name: 'google')
		end

		img_times.times do 
			self.images.build(name: 'other')
		end
	end

end
