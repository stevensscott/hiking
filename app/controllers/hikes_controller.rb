class HikesController < ApplicationController
  def index
    hikes=Hike.all 
    render json: hikes.as_json
  end
  def show
    hike=params[:id]
    hike=Hike.find_by(id: hike)
    render json: hike.as_json
  end
  def create
    hike=Hike.new(
    name: params[:name],
    address: params[:address],
    distance: params[:distance],
    difficulty: params[:difficulty],
    pets_allowed: params[:pets_allowed]

    )
    if hike.save
      render json: hike.as_json
    else 
      render json: {message: "bad request"}, status: 422
    end
  end

end
