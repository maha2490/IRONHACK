#(server or) app.rb

require "sinatra"
require "sinatra_reloader"

get "/" do
  erb(:home_page)
end 

#ADD
#-----------------------------------------
get "/add" do
  erb(:add)
end
post "/calculate_add" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first + second
	"#{first} + #{second} = #{result}"
end


#SUBTRACT
#----------------------------------------
get "/subtract" do
	erb(:subtract)
end
post "/calculate_subtract" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first - second
	"#{first} - #{second} = #{result}"
end


#MULTIPLY
#---------------------------------------
get "/multiply" do
	erb(:multiply)
end
post "/calculate_multiply" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first * second
	"#{first} * #{second} = #{result}"
end


#DIVIDE
#--------------------------------------
get "/divide" do
	erb(:divide)
end
post "/calculate_divide" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first / second
	"#{first} / #{second} = #{result}"
end

