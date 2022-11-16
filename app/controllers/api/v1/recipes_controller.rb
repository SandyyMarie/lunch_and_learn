class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country] == nil ##if no param sent, randomize
      search_country = RandomCountryFacade.random_country_name
      data = RecipeFacade.get_recipes_for_country(search_country)
      render json: RecipeSerializer.new(data)
    elsif params[:country] == "\"\"" ##if param is empty string, return empty data set
      render json: {data: []}
    elsif RandomCountryFacade.country_exists?(params[:country].titleize) ##if country param sent AND valid
      search_country = params[:country]
      data = RecipeFacade.get_recipes_for_country(search_country)
      render json: RecipeSerializer.new(data)
    else ## else country param WAS sent but was NOT a valid country
      render json: {error: "Please check the spelling of Country, '#{params[:country]}' is not valid"}, status: 400
    end
  end
end
