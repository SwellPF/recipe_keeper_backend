class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    def create
      #byebug
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe), status: :accepted
        else
            render json: {errors: recipe.errors.full_messages}, status: unprocessible_entity
        end
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: RecipeSerializer.new(recipe)
    end


    def destroy
            recipe = Recipe.find(params[:id])
            if recipe.destroy
              render json: { id: recipe.id }
            end
    end


            private

            def recipe_params
                params.require(:recipe).permit(:name, :directions, :category_id, ingredients:[])
            end
end
