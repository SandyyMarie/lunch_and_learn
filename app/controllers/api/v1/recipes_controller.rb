class Api::V1::RecipesController < ApplicationController
  def index
    render json: RecipeSerializer.new(RecipeFacade.get_recipes_for_country(params[:country]))
  end
end