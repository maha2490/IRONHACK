#Check.rb


class Check
	def initialize(email, password)
		@email = email
		@password = password
	end

	def pass_length?
		if @password.length > 7
			true
		else
			false
		end
	end

	def alpha_numeral_check?

		if @password =~ /|0-9|/ && @password =~ /[A-Z]/ && @password =~ /[a-z]/ 
			true
		else
			false
		end
	end

	def symbol_check?
		if @password =~ /|\W|/
			true
		else
			false
		end

	end

	def email_check?
		check = @password =~ /@email/
		if check == nil
			true
		else
			false
		end
	end
	def check_everything
		pass_length? &&
		alpha_numeral_check? &&
		symbol_check? &&
		email_check?
	end
end