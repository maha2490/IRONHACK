#lib/string_calculator.rb

class StringCalculator
  def add(numbers_string)
	string_total = numbers_string.length
	if string_total > 1
		numbers_array = numbers_string.split(",")
		total = 0
		numbers_array.each do |x|
			total = x.to_i + total
			# total += x.to_i
		end
		total
	elsif string_total <= 1
		numbers_string.to_i
	end
  end
end