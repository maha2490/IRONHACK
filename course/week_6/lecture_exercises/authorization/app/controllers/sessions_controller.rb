class SessionsController < ApplicationController
	def new
	end

	def create #POST / login
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password]) # user.authenticate comes from has_secure_password ..
														# .. that we added in user.rb
			session[:user_id] = user.id
			redirect_to "/"
		else
			redirect_to "/login"
		end
	end

	def destroy
		session.clear
		redirect_to "/"
	end

end
