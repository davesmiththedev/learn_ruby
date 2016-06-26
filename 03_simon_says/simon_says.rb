def echo statement
	statement
end

def shout statement
	statement.upcase
end

def repeat statement, repeats=2
	repeated_statement = statement + ' '
	(repeats-1).times do
		repeated_statement = repeated_statement + statement + ' ' 
	end
	repeated_statement.rstrip
end

def start_of_word word, number_of_letters
	result = ''
	number_of_letters.times do |x|
		result = result + word[x]
	end
	result
end

def first_word statement
	words = statement.split[0]
end

def titleize statement
	little_words = ['and', 'the', 'over']
	statement = statement.gsub(/\w+/) { |match| little_words.include?(match) ? match : match.capitalize }
	statement.slice(0,1).capitalize + statement.slice(1..-1)
end