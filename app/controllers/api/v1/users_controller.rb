class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(name: params[:name], email: params[:email], api_key: User.api_generator)
    if user.save
      render json: UserSerializer.new(user), status: 201
    else
      render json: { error: 'User not created, please try again' }, status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
