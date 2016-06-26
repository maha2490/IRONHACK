#lib/todolist.rb

class TodoList
	attr_reader :tasks, :sorted_tasks
    def initialize
        @tasks = []
        @sorted_tasks = []
    end

    def add_task(task)
    	@tasks << task
    end

    def delete_task(id)
    	@tasks.delete_if {|id| id = @id}
    	@tasks
    end

    def find_task_by_id(id)
    	edited_array = @tasks.select do|task|
    	 task.id == id
    	end
    	edited_array[0].content
    end

    def sort_by_created
        sorted_tasks = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
        #is newer > older
    end
end

