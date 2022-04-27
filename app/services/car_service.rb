class Carservice < ApplicationService

    def create(params:)
        car = Car.new(params)
    end

    def update(car_id:, params:)
        car = find_car(car_id)
        car.assing_attributes(params)
        car
    end

    def destroy
        car = find_car(car_id)
        car.destroy
    end

    private

    def find_car(car_id:)
        Car.find_by(car_id)
    end
end