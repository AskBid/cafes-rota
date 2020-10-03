class User < ApplicationRecord
	include Slug::InstanceMethods
	extend Slug::ClassMethods

	has_many :notes
	has_many :visits
	has_many :cafes, through: :visits

	has_secure_password
	has_secure_password validations: false

	validates_uniqueness_of :name, {message: "%{value} name already exist"}
	validates :name, presence: { message: "%{attribute} must be given" }
	validates :email, presence: { message: "%{attribute} must be given" }
  validates :password, on: create,
  	presence: {message: 'You must enter a password'},
		length: {minimum: 2, message: 'Your password must contain at least 2 characters'}

	before_save :downcase_name

	def self.from_omniauth(response)
		User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
			u.name = response[:info][:name]
			u.email = response[:info][:email]
			u.password = SecureRandom.hex(15)
		end
	end

	def missing_cafes
		all_cafes = Cafe.all
		my_cafes = self.cafes
		all_cafes - my_cafes
	end
end