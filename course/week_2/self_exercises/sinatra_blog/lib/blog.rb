# lib/blog.rb

class Blog
  attr_accessor :posts
  def initialize
    @posts = []
    @page_start = 0
    @page_end = 2
  end

  def add_post(new_post)
    @posts.push(new_post)
  end

  def latest_posts
    @posts.sort { |post1, post2| post2.date <=> post1.date}
  end
end