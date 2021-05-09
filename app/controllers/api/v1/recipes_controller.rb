class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    def create
        recipe.new(recipe_params)
        if recipe.save
            render json: recipe, status: :accepted
        else
            render json: {errors: recipe.errors.full_messages}, status: unprocessible_entity
        end
    end

            private

            def recipe_params
                params.require(:recipe).permit(name, directions, :category_id)
            end
end
