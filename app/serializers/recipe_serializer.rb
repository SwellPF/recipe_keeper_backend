class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :directions, :category, :ingredients
end
