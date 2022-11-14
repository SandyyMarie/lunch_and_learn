class Api::V1::FavoritesController < ApplicationController
  def index
    render json: Favorites.all
  end
end