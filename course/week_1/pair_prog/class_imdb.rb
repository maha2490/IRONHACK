require("imdb") 
#links to IMDB gem installed in terminal
title_array = nil
File.open("movie.txt") do |the_file|
   title_array = the_file.read.split("\n")
end
movies = []
title_array.each do |title|
   movies << Imdb::Search.new(title).movies[0]
    end


counter = 10
while counter >= 1 do
graph = ""
    movies.each do |movie|
        if movie.rating >= counter
            graph += "|#"
            else
            graph += "| "
        end
    end
    puts graph
    counter -= 1

end

[5:34]  
require("imdb") 
#links to IMDB gem installed in terminal
title_array = nil
File.open("movie.txt") do |the_file|
   title_array = the_file.read.split("\n")
end
movies = []
title_array.each do |title|
   movies << Imdb::Search.new(title).movies[0]
    end


counter = 10
while counter >= 1 do
graph = ""
    movies.each do |movie|
        if movie.rating >= counter
            graph += "|#"
            else
            graph += "| "
        end
    end
    puts graph
    counter -= 1

end


# graph = ""
# movies.each do |movie|
#     if movie.rating >= 10
#         graph += "|#"
#     else
#         graph += "| "
#     end
# end
# puts graph

# graph = ""
# movies.each do |movie|
#     if movie.rating >= 9
#         graph += "|#"
#     else
#         graph += "| "
#     end
# end
# puts graph

# graph = ""
# movies.each do |movie|
#     if movie.rating >= 8
#         graph += "|#"
#     else
#         graph += "| "
#     end
# end
# puts graph






puts " 1 2 3 4 5"

movies.each_with_index do |movie, index|
    puts "#{index+1}. #{movie.title}"
end


# def create_graph(item)
#     # puts item.title
#     if movies.rating >= 7
#         puts "|#| |#| |#| |#| |#| |#| |#| "

#     end
# end



=begin
movies.each do |animate|
    rating = puts animate.rating
end    

if rating >= 9
    puts movie.name
end    
=end



# movies.each do |thing|
# puts thing.rating
# end


# require("imdb")

# the_search = Imdb::Search.new("Captain America: Civil War")

# # The .movie method returns a array that contains the results
# first_result = the_search.movies[0]

# puts "Got a total of #{the_search.movies.length} results"
# puts "First result:"
# puts first_result.title
# puts first_result.rating
