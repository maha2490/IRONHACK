class SandwichViewsController < ApplicationController
	def index
		@sandwich_array = Sandwich.all
		render "index"
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients = @sandwich.ingredients # rails lets you access ingredients through middle-man table
		@all_ingredients = Ingredient.all
		render "show"
	end

end
