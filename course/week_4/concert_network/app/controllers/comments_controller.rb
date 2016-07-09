class CommentsController < ApplicationController
	def new
		@specific_concert = Concert.find(params :concert_id)
		@comment = @specific_concert.comments.new
		render "show"  #of concert???
	end

	def create
		@specific_concert = Concert.find(params :concert_id)
		@comment = @specific_concert.comments.new(
			:feedback => params[:comment][:feedback],
			concert_id: @specific_concert.id)

		@comment.save
		redirect_to "url"
	end


	def show
	end
end
