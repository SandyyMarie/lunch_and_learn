class Api::V1::AirQualityController < ApplicationController
  def index
    if params[:country] == nil
      country = RandomCountryFacade.random_country_name
      render json: AirQualitySerializer.new(AirQualityFacade.air_quality_for_country(country))
    elsif RandomCountryFacade.country_exists?(params[:country])
      render json: AirQualitySerializer.new(AirQualityFacade.air_quality_for_country(params[:country]))
    else
      render json: {error: "Please check the spelling of Country, '#{params[:country]}' is not valid"}, status: 400
    end
  end
end