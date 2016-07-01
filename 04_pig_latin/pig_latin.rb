def translate(input)
	def check_letter(letter)
		aei = letter == "a" || letter == "e" || letter == "i"
		ouy = letter == "o" || letter == "u" || letter == "y"
		is_vowel = aei || ouy
		return is_vowel
	end
	
	output = []
	words = input.split(" ")
	
	words.each do |x|
		letters = x.split("")

		for i in 0..letters.length-1
			if check_letter(letters.take(1)[0])
				letters << "ay"
				output << letters.join
				break
			elsif letters.values_at(i-1..i).join == "qu"
				letters << letters.values_at(0..i).join << "ay"
				letters.slice!(0..i)
				output << letters.join
				break		
			elsif check_letter(letters[i])
				letters << letters.take(i).join << "ay"
				letters.slice!(0,i)
				output << letters.join
				break
			elsif letters.values_at(0..1).join == "qu"
				letters << letters.values_at(0..1).join << "ay"
				letters.slice!(0..1)
				output << letters.join
				break
			end
		end
	end
	return output.join(" ")
end
