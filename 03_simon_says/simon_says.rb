def echo(msg)
	return msg
end
def shout(msg)
	return msg.upcase
end
def repeat(*input) # did it without default values (should be def repeat(message, number_of_times=2) etc.)
	word = input[0]
	if input.size > 1
		times = input[1]
		return (word+" ")*(times-1)+word	
	else
		return word+" "+word
	end	
end
def start_of_word(msg, how_many_letters)
	return msg[0..how_many_letters-1]
end
def first_word(msg)
	return msg.split[0]
end
def titleize(msg)
	input = msg.split
	input.each do |word|
		if word != "over" && word != "and" && word != "the"
			word.capitalize!
		end
		if input[0] == "over" || input[0] == "and" || input[0] == "the"
			input[0].capitalize!
		end
	end
	return input.join(" ")
end