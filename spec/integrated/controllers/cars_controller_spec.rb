require 'rails_helper'

RSpec.describe CarsController, type: :controller do

    let(:car) { Car.create(model: 'Fiesta', brand: 'Ford', color: 'Red', year: 2015, value: 10000.21) }

    describe 'GET#index' do
        
        before do
            get :index
        end

        it 'should return status code 200' do
            expect(response.status).to eq(200)
        end

        it 'should render index template' do
            expect(response).to render_template(:index)
        end
    end

    describe 'GET#new' do
        
        before do
            get :new
        end

        it 'should return status code 200' do
            expect(response.status).to eq(200)
        end

        it 'should render index template' do
            expect(response).to render_template(:new)
        end
    end

    describe 'GET#show' do
        
        before do
            get :show, params: { id: car.id }
        end

        it 'should return status code 200' do
            expect(response.status).to eq(200)
        end

        it 'should render index template' do
            expect(response).to render_template(:show)
        end
    end

    describe 'GET#edit' do
        
        before do
            get :edit, params: { id: car.id }
        end

        it 'should return status code 200' do
            expect(response.status).to eq(200)
        end

        it 'should render index template' do
            expect(response).to render_template(:edit)
        end
    end
end 