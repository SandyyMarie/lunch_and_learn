class Api::V1::FavoritesController < ApplicationController

  def create
    user = User.find_by(api_key: params[:api_key])
    if user == nil
      render json: { error: "That user does not exist" }, status: 404
    else
      new_fav = user.favorites.new(country: params[:country], recipe_link: params[:recipe_link], recipe_title: params[:recipe_title])
      if new_fav.save
        render json: { "success": "Favorite added successfully" }, status: 201 
      end
    end
  end

  def index
    user = User.find_by(api_key: params[:api_key])
    if user == nil
      render json: { error: "That user does not exist" }, status: 404
    else
      render json: FavoriteSerializer.new(user.favorites)
    end
  end
 end