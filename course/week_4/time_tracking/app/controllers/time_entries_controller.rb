class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
		render "index"
	end

	def new
		@my_project = Project.find(params[:project_id]) #project id is gotten throught the URL
		@my_entry = @my_project.time_entries.new		#params can pull out placeholder id, super cool!
		render "new"
	end

	def create
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new(entry_params)
		
				# another way to write the above
				# @my_entry = TimeEntry.new(
				# 	project_id: @my_project.id, 
				# 	hours: params[:time_entry][:hours]
				# 	other params ..
				# 	)

		if @my_entry.save  #.save only returns true/false
						   # makes sure all info passed validation
			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
			render "new"  #form wil also be rendered automatically
		end
	end

	def edit
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]
		render "edit"
	end

	def update
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(entry_params)
					# entry_params replaces |
					# 					  v		
					# 		hours: params[:time_entry][:hours],
					# 		minutes: params[:time_entry][:minutes],
					# 		date: params[:time_entry][:date],
					# 		comments: params[:time_entry][:comments])
			redirect_to action: "index", controller: "time_entries", project_id: @my_project.id
		else
			render "edit"
		end

	end

	def destroy
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]
		@my_entry.destroy

		redirect_to(project_time_entries_path(@my_project)) 
	end

	private # a method that states that the following is not a route, all below

	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
		# if someone submits another form that ins't time_entry, an error is thrown
	end

end
