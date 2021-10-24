class AttractionsController < ApplicationController
  def create
 attraction = Attraction.create!(attraction_params)
 render json: attraction, status: :created
  end
  def show
    hotel = Hotel.find(params[:id]).attractions
    render json: hotel

  end
  def attractions_ordered
   hotel = Hotel.find(params[:id]).attractions
    render json: hotel.order(distance: :asc)
  end


  private
  def attraction_params
params.permit(:hotel_id, :name, :timezone, :description, :long, :lat, :photo, :location, :distance)
  end
end