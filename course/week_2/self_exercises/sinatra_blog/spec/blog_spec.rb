#blog_spec

require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do

	before(:each) do
		seconds_in_day = 60 * 60 * 24
		@the_blog = Blog.new
		@post1 = Post.new("Thursday", Time.now, "Today got off to a rough start")
		@post2 = Post.new("Wednesday", Time.now - 1 * seconds_in_day, "I had a delish MealPass")
		@post3 = Post.new("Tuesday", Time.now - 2 * seconds_in_day, "Felt pretty good about class")
		@the_blog.add_post(@post1)
		@the_blog.add_post(@post2) 
		@the_blog.add_post(@post3) 
	end

	describe "add_post" do
		it "adds new posts to empty posts array" do
			expect(@the_blog.posts.length).to eq(3)  #use @the_blog as it contains the array @posts, don't have access to it here
		end
	end

	describe "latest_posts"do 
		it "sorts the @posts array from newest to oldest" do
			expect(@the_blog.latest_posts).to eq([@post1, @post2, @post3])
		end
	end
end


