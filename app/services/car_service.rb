class CarService < ApplicationService

    def create(params:)
        car = Car.new(params)
    end

    def update(car_id:, params:)
        car = find_car(car_id)
        car.assign_attributes(params)
        car
    end

    def destroy(car_id:)
        car = find_car(car_id)
        car.destroy
    end

    private

    def find_car(car_id)
        Car.find_by(id: car_id)
    end
end