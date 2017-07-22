#write your code here

def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 2)
	([string] * n).join(" ")
end

def start_of_word(string, n)
	string.slice(0, n)
end

def first_word(string)
	string.split.first
end

def titleize(string)
	# String to array with all words downcased
	string_array = string.downcase.split(" ")

	# Iterate through array and capitalize all words expect "little words"
	string_array.each do |word|
		case word
		when "a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by",
			"over", "under"
			
			# If it's a small word, skip it and go to the next one
			next
		else
			word.capitalize!
		end
	end

	# Capitalize the first and last word
	string_array.first.capitalize!
	string_array.last.capitalize!

	# Put the array back together to form a string
	string = string_array.join(" ")
end


