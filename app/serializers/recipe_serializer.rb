class RecipeSerializer
  include JSONAPI::RecipeSerializer
  attributes :title, :url, :country, :image
end