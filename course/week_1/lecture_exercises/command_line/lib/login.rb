#class

class Login
	def initialize           #creating user/pw answers
	@username = "rachel"
	@password = "palmtree"
	end

	def validate(entered_usrnm, entered_pw)	#method for testing user/pw entry
		if entered_usrnm == "rachel" && entered_pw == "palmtree"
			 "The treasure chest is opened. Gold for you!"
		else
			"LOCKOUT"
		end
	end

end

