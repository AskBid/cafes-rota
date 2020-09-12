class User < ApplicationRecord
	has_many :notes
	has_many :goings
	has_many :cafes, through: :cafes
end
