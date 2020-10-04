class Cafe < ApplicationRecord
	include Slug::InstanceMethods
	extend Slug::ClassMethods

	has_many :visits
	has_many :users, through: :visits
	has_many :links
	has_many :images
	has_many :notes
	has_many :openings

	validates_uniqueness_of :name, {message: "%{value} name already exist"}
	validates :name, presence: { message: "%{attribute} must be given" }

	before_save :downcase_name

	accepts_nested_attributes_for :links, :images, :openings, reject_if: proc { |attributes| attributes[:url].blank? }, allow_destroy: true
	# after_initialize :populate_new_cafe
	# def links_attributes=(link_attributes)
	# 	binding.pry
	# end

	# def images_attributes=(link_attributes)
	# 	# empty
	# end

	def main_image
		self.images.sample
	end

	def populate_new_cafe(url_times: 3, img_times: 8)
		self.openings.build(day: 'monday')
		self.openings.build(day: 'tuesday')
		self.openings.build(day: 'wednesday')
		self.openings.build(day: 'thursday')
		self.openings.build(day: 'friday')
		self.openings.build(day: 'saturday')
		self.openings.build(day: 'sunday')

		self.links.build(name: 'website')

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
