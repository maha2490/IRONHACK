class SandwichesController < ApplicationController
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create 
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def add_ingredient
		ingredient_id = params[:ingredient_id]
		sandwich_id = params[:id]

		sandwich = Sandwich.find_by(id:params[:id])
		sandwich_ingredient = SandwichIngredient.create(sandwich_id: sandwich_id, ingredient_id: ingredient_id )
		
		render json: sandwich.to_json(:include => [:ingredients]
	end

	def show
		sandwich = Sandwich.find_by(id:params[:id])
			unless sandwich
				render json: {error: "sandwich not found"}, status: 404
				return
			end
			render json: sandwich.to_json(:include => [:ingredients])
	end

	def update 
		sandwich = Sandwich.find_by(id: params[:id])
			unless sandwich
				render json: {error: "sandwich not found"}, status:404
				return
			end
	end

	def destroy
		sandwich = Sandwich.find_by(id: params)
			unless sandwich
				render json: {error: "sandwich not found"}, status:404
				return
			end
		sandwich.destroy
		head :no_content
	end


	private

	def sandwich_params 
		params.require(:sandwich).permit(:name, :bread_type)

	end 

end
