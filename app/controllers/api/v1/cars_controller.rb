class Api::V1::CarsController < Api::V1::ApplicationController

    def index
        @cars = Car.all
        render json: @cars
    end

    def show
        render json: @car
    end
end