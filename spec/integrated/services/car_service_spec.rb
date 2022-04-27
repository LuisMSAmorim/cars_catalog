require 'rails_helper'

RSpec.describe CarService, type: :service do

    before do
        @car_service = CarService.new
        @car = Car.create(model: 'Fiesta', brand: 'Ford', color: 'Red', year: 2015, value: 10000.21)
    end

    describe '#create' do
        it 'should create a new car' do
            params = { model: 'Palio', brand: 'Fiat', color: 'Blue', year: 2007, value: 1222.21 }

            car = @car_service.create(params: params)
            
            expect(car.model).to eq('Palio')
        end
    end

    describe '#update' do
        it 'should update a car' do
            params = { model: 'Corolla', brand: 'Toyotta', color: 'Sivler', year: 2022, value: 12300.21 }
            car = @car_service.update(car_id: @car.id, params: params)

            expect(car.model).to eq('Corolla')
        end
    end

    describe '#destroy' do
        it 'should destroy a car' do
            @car_service.destroy(car_id: @car.id)

            expect(Car.count).to eq(0)
        end
    end
end