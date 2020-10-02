module Slug
	def downcase_name
		self.name = self.name.downcase
	end

	def slug
		self.name.gsub(' ', '-')
	end

	def self.find_by_slug(slug)
		slug = slug.gsub('-', ' ')
		self.find_by(name: slug)
	end
end