module Admin
  class LocationController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
  end

  def edit
    @element = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    redirect_to locations_path
  end

  def update
    @location = Location.find(params[:id]) 
        if @location.update(locations_params)
          redirect_to locations_path
        end
  end

  def create
    @location = Location.new(locations_params)
    @location.save
    redirect_to locations_path
  end

  private

  def locations_params
    params.require(:location).permit(:name)
  end
  
  end
end
