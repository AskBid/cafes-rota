module Slug
	module InstanceMethods
		def downcase_name
			self.name = self.name.downcase
		end

		def slug
			self.name.gsub(' ', '-')
		end
	end

	module ClassMethods
		def find_by_slug(slug)
			if slug
				slug = slug.gsub('-', ' ')
				find_by(name: slug)
			end
		end
	end
end