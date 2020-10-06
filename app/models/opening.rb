class Opening < ApplicationRecord
	belongs_to :cafe

	validates :day, inclusion: { in: %w(monday tuesday wednesday thursday friday saturday sunday),
    message: "%{value} is not a valid day of the week" }
  # enum status: [:open, :close]
end
