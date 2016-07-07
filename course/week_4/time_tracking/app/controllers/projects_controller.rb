class ProjectsController < ApplicationController
#get /projects

	def index
		@projects_array = Project.order(created_at: "desc").limit(10)
		render "index"
	end

	def new   #is a GET with a form
		@my_project = Project.new
		render "new"
	end

	def show
		@my_project = Project.find_by(id: params[:id])
		render "show"
	end

	def create #is a POST, not actual page & redirects
		@my_project = Project.new( 
			:name => params[:project][:name],
			:description => params[:project][:description])
		@my_project.save
		
		redirect_to "/projects/#{@my_project.id}"
	end
	
end
