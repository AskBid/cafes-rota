module ApplicationHelper
	def capitalize_each_word(sentence)
		sentence.gsub('-',' ').split.map(&:capitalize).join(' ')
	end
end
