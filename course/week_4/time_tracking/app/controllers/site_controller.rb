class SiteController < ApplicationController
# wired to go into views/site folder files
	
	 def home
		render "home"
	end

	def contact
		render "contact"  #looking for site file with this name
	end

end
