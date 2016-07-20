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
		sandwich_id = params[:id]
		sandwich = Sandwich.find_by(id:params[:id])

		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		ingredients = sandwich.ingredients
		response = {sandwich: sandwich, ingredients: ingredients}

		render json:response
		
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

	# 			checks to see if a sandwich exists by this ID
	#	 object			 |	   item id in the URL
	#       |			 |      |				|
		sandwich = Sandwich.find_by(id: params[:id]) 
			unless sandwich # will return either true/false, if the object exists
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
