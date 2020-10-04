module ApplicationHelper
	def capitalize_each_word(sentence)
		sentence.split.map(&:capitalize).join(' ')
	end
end
