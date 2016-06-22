#app.rb

require "sinatra"
require_relative("lib/Check.rb")

get "/" do
	erb(:home)
end

post "/login_status" do
	username = params[:email]
	password = params[:password]
	first_check = Check.new(username, password)
	login_try = first_check.check_everything

	if login_try == true
		erb(:login_status)
	else
		erb(:login_try_again)
	end

end
