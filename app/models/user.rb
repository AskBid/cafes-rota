class User < ApplicationRecord
	has_many :notes
	has_many :goings
	has_many :cafes, through: :goings

	has_secure_password

	validates_uniqueness_of :name, {message: "%{value} name already exist"}
end
