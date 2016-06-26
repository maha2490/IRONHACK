#sinatra/app.rb


require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/" do
	"My first Sinatra app."
end

get "/session_test" do
	@current_session = session

	erb(:display_the_session)
end

get "/session_add/:value" do
	new_value = params[:value]
	session[:new_session_value] = new_value

	redirect to("/session_test")
end

get "/party" do
	erb(:party)
end
get "/hi" do
	@name = "rAcHeL"
	erb(:hi_page)
	end

get "/about" do
	erb(:about)
	end

#users = {
	#{}"khalifenizar" => {:name => "Nizar Khalife", :email => nizar@ironhack.com}
	#{}"maha2490" => {:name => "Rachel Mahan", :email => rachel@ironhack.com }
#}

#get "/users/:username" do
	#@name = params[:username]

	#if @name == "maha2490" || @name == "rachel"
		#erb(:another_file)
	#erb(:user_profile)
#end