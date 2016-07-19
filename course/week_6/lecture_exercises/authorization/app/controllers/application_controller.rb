class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  	if @current_user.nil?
  		@current_user = User.find_by(id: session[:user_id])
  	end

  	@current_user
  end  

  def authorize_user
  	unless current_user
  		flash[:message] = "Please log in or register to access this page"
  		redirect_to "/"
  	end
  end

  def admin_only
  	if current_user.nil? || current_user.role != "admin"
  		flash[:access_denied] = "You must be an admin to see this page"
  		redirect_to "/"
  	end
  end

end
