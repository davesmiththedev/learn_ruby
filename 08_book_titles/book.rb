class Book
	attr_reader :title

	def title= title
		@title = capitalize(title)
	end

	def capitalize title
		
		words = title.split(' ')
		
		words.each do |word|
			if words.index(word) == 0
				word.capitalize!
			else
				if word == 'and'
					#'cunjunction'
					word.downcase!
				elsif ['in', 'of'].include?(word)
					#'preposition'
					word.downcase!
				elsif ['a', 'the', 'an'].include?(word)
					#'article'
					word.downcase!
				else
					#'other word'
					word.capitalize!
				end
			end
		end
		
		#combine to one string and remove trailing whitespace
		words.join(' ').chomp

	end

end