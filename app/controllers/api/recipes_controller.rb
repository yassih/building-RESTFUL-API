class API::RecipesController < ApplicationController

		before_action :set_recipe, only: [:destroy, :update]
		before_action :recipe_params, only: [:update]

	def index
		@recipes = Recipe.all
		respond_to do |format|
			# format.html {render :index}
			format.json { render :json => @recipes }
			# render :nothing => true, :status => 404
		end
	end

	def show
		@recipe = Recipe.find(params[:id])
		@recipe.ingredients = Ingredient.where(:recipe_id => params[:id])
		respond_to do |format|
			format.json { render :json => @recipe }
		end
	end

	def create
		@recipe = Recipe.new(recipe_params)
		respond_to do |format|
			if @recipe.save 
				format.json { render :json => @recipe }		
			else
				format.json { render json: @recipe.errors, status: :unprocessable_entity }
			end
		end



	end

	def update
		if @recipe.update(recipe_params)
			render json: @recipe
		else
			render json: @recipe.errors, status: :unprocessable_entity
		end
	end


	def destroy
		respond_to do |format|
			if @recipe.destroy
				format.json { head :no_content, status: :ok }
			else
				format.json { render json: @recipe.errors, status: :unprocessable_entity }
			end
		end
	end	



	private 
  		def recipe_params
    		params.require(:recipe).permit(:id,:name,ingredients_attributes: [:id,:name,:_destroy])
  		end

		def set_recipe
			@recipe = Recipe.find(params[:id])
		end

end
