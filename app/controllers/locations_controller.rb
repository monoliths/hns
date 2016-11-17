class LocationsController < ApplicationController
  #before_action :authenticate_request
  #before_action :set_location, only: [:show, :update, :destroy]

  # GET /locations
  # currently only exist for testing purposes
  def index
    @locations = current_user.location
    unless @locations
      render json: []
    else
      render json: @locations
    end
  end

  # GET /locations/1
  # currently only exist for testing purposes
  def show
    render json: @location
  end

  # PATCH/PUT /locations/1
  def update
    unless params[:id] == current_user.id
      render json: {"Location": {"error": "provided token does not map to the user id provided"} }
      return
    end
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # updates the locaiton for the curren_user using the given token
  def update_current_user_location
    @location = current_user.location
    if @location.update(location_params)
      render @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # POST /locations
  # locations are created when a user is created.
  # def create
  #   @location = Location.new(location_params)
  #
  #   if @location.save
  #     render json: @location, status: :created, location: @location
  #   else
  #     render json: @location.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /locations/1
  # locations are only destroyed when a user destroys their account
  # def destroy
  #   @location.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
      params.require(:location).permit(:longitude, :latitude, :altitude)
    end
end
