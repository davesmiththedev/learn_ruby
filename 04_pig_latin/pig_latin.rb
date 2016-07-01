def translate statement
	words = statement.split
	word_position = 0

	words.each do |word|


		if (/^[aeiou]/).match(word)
			word = one_vowel word
		elsif word[0..1] == 'qu'
			#treat qu as two consonants
			word = two_consonants word
		elsif /(?!^[aeiou])([aeiou])/.match(word[0..1])	
			word = one_consonant word
		elsif /(?!^[aeiou])([q])([u])/.match(word[0..2])
			#treat a consonant followed by qu as three consonants
			word = three_consonants word
		elsif /(?!^[aeiou]{2})([aeiou])/.match(word[0..2])
			word = two_consonants word
		elsif /(?!^[aeiou]{3})/.match(word[0..2])
			word = three_consonants word
		end


		words[word_position] = word
		word_position += 1
	end
	
	words.join(" ")

end

def one_vowel word
	word = word + "ay"
end

def one_consonant word
	first_letter = word.slice!(0)
	word = word + first_letter + "ay"
end

def two_consonants word
	first_two_letters = word.slice!(0, 2)
	word = word + first_two_letters + "ay"
end

def three_consonants word
	first_three_letters = word.slice!(0,3)
	word = word + first_three_letters + "ay"
end
