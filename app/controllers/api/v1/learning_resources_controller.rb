class Api::V1::LearningResourcesController < ApplicationController
  def index
      search_country = params[:country]
      data = LearningResourcesFacade.new_resource(search_country)
      render json: LearningResourcesSerializer.new(data)
  end
end
