class Cafe < ApplicationRecord
	has_many :goings
	has_many :users, through: :goings
	has_many :links
	has_many :images
	has_many :notes
end
