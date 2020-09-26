class User < ApplicationRecord
	has_many :notes
	has_many :goings
	has_many :cafes, through: :goings

	has_secure_password
	has_secure_password validations: false

	validates_uniqueness_of :name, {message: "%{value} name already exist"}
	validates :email, presence: { message: "%{attribute} must be given" }
  validates :password, presence: {
  	message: 'You must enter a password'},
		length: {minimum: 2,
		message: 'Your password must contain at least 2 characters'
	}
	validates :name, presence: { message: "%{attribute} must be a number" }

	def self.from_omniauth(response)
		User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
			u.name = response[:info][:name]
			u.email = response[:info][:email]
			u.password = SecureRandom.hex(15)
		end
	end
end
