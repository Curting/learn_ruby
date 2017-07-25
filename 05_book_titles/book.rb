class Book
	def title=(title)
		@title = titleize(title)
	end

	def title
		@title
	end

	def titleize(str)
		small_words = %w[the a an and in of]

		str.capitalize.gsub(/\w+/) do |word|
			if small_words.include?(word)
				word
			else
				word.capitalize
			end
		end
	end
end


