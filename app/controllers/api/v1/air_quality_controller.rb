class Api::V1::AirQualityController < ApplicationController
  def index
    if RandomCountryFacade.country_exists?(params[:country])
      render json: AirQualitySerializer.new(AirQualityFacade.air_quality_for_country(params[:country]))
    else
      render json: {error: "Please check the spelling of Country, #{params[:country]} does not exist"}, status: 400
    end
  end
end