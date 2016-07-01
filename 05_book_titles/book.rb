class Book
	attr_accessor :title

	def title
		input = @title.split
		input.each do |word|
			input[0].capitalize!
			if word != "over" && word != "and" && word != "the" && word != "of" && word != "in" && word != "a" && word != "an"
				word.capitalize!
			end
		end
		return input.join(" ")
	end
end
