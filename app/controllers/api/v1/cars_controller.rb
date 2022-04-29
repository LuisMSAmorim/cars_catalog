class Api::V1::CarsController < Api::V1::ApplicationController
    before_action :set_car, only: %i[ show ]

    def index
        @cars = Car.all
        render json: @cars
    end

    def show
        render json: @car
    end

    private 

    def set_car
        @car = Car.find(params[:id])
    end
end