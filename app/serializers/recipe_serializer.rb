class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  #belongs_to :category
  attributes :name, :directions, :category, :category_name, :ingredients
end
