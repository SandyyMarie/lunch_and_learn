class Api::V1::AirQualityController < ApplicationController
  def index

    render json: AirQualitySerializer.new(AirQualityFacade.air_quality_for_country(params[:country]))
  end
end