class Api::V1::RecipesController < ApplicationController
  def index

    if params[:country] == nil
      search_country = RandomCountryFacade.random_country_name
    else
      search_country = params[:country]
    end

    render json: RecipeSerializer.new(RecipeFacade.get_recipes_for_country(search_country))
  end
end