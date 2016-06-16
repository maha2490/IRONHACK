def solve_cipher(input, shift = -3)
	array_letters = input.split("")
	array_numbers = []
	array_letters_final = []
	array_letters.each do |x|
		letter_to_number = x.ord
		if letter_to_number <= 96 && letter_to_number != 32
			array_numbers.push(letter_to_number + (shift + 26))
		elsif letter_to_number == 32
			array_numbers.push(letter_to_number)
		else
			array_numbers.push(letter_to_number + shift)
		end
	end
	array_numbers.each do |x|
		array_letters_final.push(x.chr)
	end
	array_letters_final.join
end

solve_cipher("p| uhdo qdph lv grqdog gxfn")


#(96 + 26).chr

#created 3 arrays: for split letters, for those converted into numbers, for the numbers - shift.
#final array was joined with ciphered word
#96+26 is what we do to make an a to z. need to make an if/else statement to capture any "a"s that might appear in either original text. This should be done when the .ord iteration happens.