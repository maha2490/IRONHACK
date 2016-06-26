#post_spec

require_relative("../lib/post.rb")


RSpec.describe Post do

	before :each do

	@post1 +
	Post.new("Day one", Time.now, "The very first post")
	end

	it "should print out the selected page's title & content" do 
		expect(@post1.print).to eq("Day one")
	end
end



COPY FILE FROM ANS
