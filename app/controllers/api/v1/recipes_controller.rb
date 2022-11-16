class Api::V1::RecipesController < ApplicationController
  def index

    if params[:country] == nil
       search_country = RandomCountryFacade.random_country_name
    elsif RandomCountryFacade.country_exists?(params[:country])
      search_country = params[:country]
    else #might need to move render json into within block if it doesnt break before getting there
      render json: {error: "Please check the spelling of Country, '#{params[:country]}' is not valid"}, status: 400
    end

    render json: RecipeSerializer.new(RecipeFacade.get_recipes_for_country(search_country))
  end
end
