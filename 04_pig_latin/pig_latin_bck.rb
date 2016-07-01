def translate(input)
	splitted = input.split(" ")
	splitted.each do |x|
		splitted_word = input[x].split("")
		first_letter = splitted_word[0]
		second_letter = splitted_word[1]
		output =[]
		def check_letter(letter)
			aei = letter == "a" || letter == "e" || letter == "i"
			ouy = letter == "o" || letter == "u" || letter == "y"
			is_vowel = aei || ouy
			return is_vowel
		end
		if check_letter(first_letter) == true
			output << splitted_word[0] +"ay"
		elsif !(check_letter(first_letter)) && !(check_letter(second_letter))
			first_shifted_letter = splitted_word.shift
			second_shifted_letter = splitted_word.shift
			splitted_word << first_shifted_letter
			splitted_word << second_shifted_letter
			splitted_word << "ay"
			output << splitted_word.join

		else
			shifted_letter = splitted.shift
			splitted << shifted_letter
			splitted << "ay"
		end
	end
	return output
end


elsif !(check_letter(letters[1]))
				first = letters.shift
				second = letters.shift
				letters << first
				letters << second + "ay"
				output << letters.join
			else
				first = letters.shift
				letters << first + "ay"
				output << letters.join
			end