class LocationsController < ApplicationController

  # GET /locations/1
  # currently only exist for testing purposes
  def show
    location = Location.find(params[:id])
    render json: @location
  end

  # PATCH/PUT /locations/1
  def update
    location = Location.find_by(params[:id])
    if location.update(location_params)
      render json: location
    else
      render json: location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  # locations are only destroyed when a user destroys their account
  def destroy
    @location.destroy
  end

  private
    # Only allow a trusted parameter "white list" through.
    def location_params
      params.require(:location).permit(:longitude, :latitude, :altitude, :user_id)
    end
end
