class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      Location.create!(latitude: 0.0, longitude: 0.0, altitude: 0.0, user_id: user.id)
      render json: user, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
