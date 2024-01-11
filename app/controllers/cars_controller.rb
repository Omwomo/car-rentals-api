class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def Show
    @car = Car.find(params[:id])
    render json: @car
  end
end
