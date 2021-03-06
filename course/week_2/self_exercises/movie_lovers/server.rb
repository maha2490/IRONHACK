#server.rb

require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

#anything declared up here is accessible in all get/post requests
final_search_results = []



get "/" do 
	erb(:home)	
end

post "/search" do
	search_string = params[:user_entry] 

	#this is an array of searched movies, limited to fifteen
	inital_search_results = Imdb::Search.new(search_string).movies.first(15)  
	
	@poster_search_results = []
	#looping through each result to see if it has a poster
	inital_search_results.each do |item|
		if item.poster != nil
			@poster_search_results.push(item)
		end
		@poster_search_results.first(9)
	end
	final_search_results = @poster_search_results
	erb(:search)
end

post "/get_answer" do #/get_answer doesn't have to be an actual page/erb
	@poster_search_results = final_search_results
	results_by_release = @poster_search_results.sort {|item1, item2| item2.year <=> item1.year} 
	newest_title = results_by_release[0]

	#directing guess to either correct/incorrect response page
	guess = params[:guessed_movie]
	if guess == newest_title.title      #use sessions or redefine array
		erb(:correct_guess)
	else
		erb(:incorrect_guess)
	end
end

post "/return_home" do
	redirect to("/")
end

