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

		@my_entry = @my_project.time_entries.new(
			:hours => params[:time_entry][:hours],
			:minutes => params[:time_entry][:minutes],
			:date => params[:time_entry][:date],
			:comments => params[:time_entry][:comments])

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


end
