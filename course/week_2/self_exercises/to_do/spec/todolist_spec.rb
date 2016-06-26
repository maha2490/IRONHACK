#todolist.spec.rb

require_relative("../lib/todolist.rb")
require_relative("../lib/task.rb")

#RSpec.describe TodoList do
	# let :@this_week do
	# TodoList.new
	# end
	# let :@task do
	# Task.new("Go pet Francois")
	# end

RSpec.describe TodoList do

	before :each do 
		@task = Task.new("Go pet Francois")
		@task2 = Task.new("Buy groceries")
		@task3 = Task.new("Have a nice glass of wine")
		@task4 = Task.new("Take a bubble bath")
		@this_week = TodoList.new
	end

	describe "add_task" do 
		it "adds items to the tasks array" do
			@this_week.add_task(@task) #gives a task to the @tasks array
			expect(@this_week.tasks.length).to eq(1)
			end
	end
	
	describe "delete_task" do
		it "should return and array with an omitted item" do
			expect(@this_week.delete_task(1)).to eq([])
		end
	end

	describe "find_task_by_id" do
		it "should print a task of a specific item when cited by id" do
			@this_week.add_task(@task)
			expect(@this_week.find_task_by_id(@task.id)).to eq("Go pet Francois")
		end
	end

#this isn't working
	describe "sort_by_created" do
		it "should sort tasks array by time created" do
			
			@this_week.add_task(@task2)
			@this_week.add_task(@task3)
			@this_week.add_task(@task4)
			expect(@this_week.sort_by_created[0]).to eq(@task4)
		end
	end
end 