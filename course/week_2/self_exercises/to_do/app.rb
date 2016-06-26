#server/app.rb

require "sinatra"
require "sinatra_reloader"

require_relative("lib/todolist.rb")
require_relative("lib/task.rb")

this_week = TodoList.new
task1 = Task.new("Complete daily meditation")
task2 = Task.new("Take a yoga class")
task3 = Task.new("Pet Francois")

get "/" do 
	@tasks = my_list.tasks
	erb :home
end

get "/new_task" do
	erb :new_task
end

post "/create_task" do

	new_task = Task.new( params[:task_content])
	my_list.add_task(new_task)
	redirect to("/")
end

get "/complete_task/:id" do
	the_task = my_list.find_task_by_id( params[:id].to_i)
	the_task.complete!
	redirect to("/")
end

#get "/tasks" do

	#erb :task_index	
#end
