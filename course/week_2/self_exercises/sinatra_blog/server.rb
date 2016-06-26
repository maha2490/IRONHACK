# app.r
require "sinatra"
require "sinatra/reloader"
require_relative("lib/post.rb")
require_relative("lib/blog.rb")


seconds_in_day = 60 * 60 * 24

the_blog = Blog.new

#our fake database
the_blog.add_post Post.new("Thursday", Time.now, "Today got off to a rough start")
the_blog.add_post Post.new("Wednesday", Time.now - 1 * seconds_in_day, "I had a delish MealPass")
the_blog.add_post Post.new("Tuesday", Time.now - 2 * seconds_in_day, "Felt pretty good about class")
the_blog.add_post Post.new("Monday", Time.now - 3 * seconds_in_day, "Refreshed from the weekend")
the_blog.add_post Post.new("Sunday", Time.now - 4 * seconds_in_day, "Suprise! Watched basketball")
the_blog.add_post Post.new("Saturday", Time.now - 5 * seconds_in_day, "Felt gross & chilled at mi casa")
the_blog.add_post Post.new("Friday", Time.now - 6 * seconds_in_day, "Happy hour ran late")
#end fake database

get "/" do
	@posts_array = the_blog.latest_posts #can't use the @posts array from Blog class. Using @posts..
	erb(:home)							#..as a method on our instance of Blog class to access the []. 
end

get "/post_details/?:index?" do |id = 1|
	index = id.to_i
	@selected_post = the_blog.latest_posts[index]
	unless @selected_post
		redirect to "/"
	end
	erb(:post_details)
end

get "/new_post_form" do
	erb(:new_post_form)
end

post "/process_post" do
	new_post = Post.new( params[:post_title], Time.now, params[:post_text] )
  	blog.add_post( new_post )

  	redirect to("/")
end




