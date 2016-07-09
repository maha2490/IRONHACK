class ConcertsController < ApplicationController
	def index
		@upcoming_concerts = Concert.where("date > ?", DateTime.now)

		@previous_concerts = Concert.where("date < ?", DateTime.now)
		render "index"
	end

	def new
		@concert = Concert.new
		render "new"
	end

	def create 
		@concert = Concert.new(
			:artist => params[:concert][:artist],
			:venue => params[:concert][:venue],
			:city_state => params[:concert][:city_state],
			:price => params[:concert][:price],
			:date => params[:concert][:date],
			:description => params[:concert][:description])

			if @concert.save
				redirect_to concerts_path
			else
				redirect_to new_concert_path
			end
	end

	def show
		@selected_concert = Concert.find_by(id: params[:id])
		render "show"
	end


end
