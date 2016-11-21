class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  VALID_USER_SEARCH_PARAMS = [:name, :email, :id]

  def create
    user = User.new(user_params)
    if user.save
      Location.create!(latitude: 0.0, longitude: 0.0, altitude: 0.0, user_id: user.id)
      render json: user, status: 201
    else
      render json: { error: user.errors }, status: :bad_request
    end
  end

  def user_search
    # only want valid params to be sliced out of the provided params
    search_params = params.slice(*VALID_USER_SEARCH_PARAMS).deep_symbolize_keys

    # execute the search
    user = User.find_by(search_params)

    if user
      render json: user 
    else
     render json: { "error": "resource not found" }, status: 404
    end
  end


  # uses token to return user location.
  def user_info
    render json: current_user 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
