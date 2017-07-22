#write your code here
# Vowels: a, e, i, o, u.

def translate(str)
	vowels = %w[a e i o u]

	translation = str.gsub(/\w+/) do |word|		# Iterate through every word and substitute with return value
		if vowels.include?(word[0])				# Rule 1: Check if first index of word is a vowel
			word << "ay"						# If true add "ay" to the word

		elsif word.include?("qu")								# Fix for "qu" as a consonant
			idx = word.index(/[aeio]/)							# Does the same as below just without u as a vowel
			word[idx, word.length] << word[0, idx] << "ay"

		else
			idx = word.index(/[aeiou]/)							# Rule 2: Find index of first vowel
			word[idx, word.length] << word[0, idx] << "ay"		# Remove chars until first vowel (idx) and add them to the end + "ay"
		end
	end
end