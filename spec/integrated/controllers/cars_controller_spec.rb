require 'rails_helper'

RSpec.describe CarsController, type: :controller do

    let(:car) { Car.create(model: 'Fiesta', brand: 'Ford', color: 'Red', year: 2015, value: 10000.21) }
    let(:user) { User.create(email: 'admin@admin.com', password: 'admin0!@', password_confirmation: 'admin0!@') }

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
            sign_in user
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
            sign_in user
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
            sign_in user
            get :edit, params: { id: car.id }
        end

        it 'should return status code 200' do
            expect(response.status).to eq(200)
        end

        it 'should render index template' do
            expect(response).to render_template(:edit)
        end
    end

    describe 'POST#create' do
            
        before do
            sign_in user
            post :create, params: { car: { model: 'Amarok', brand: 'Volkswagen', color: 'White', year: 2016, value: 1000000.21 } }
        end

        it 'should return status code 302' do
            expect(response.status).to eq(302)
        end

        it 'should redirect to show page' do
            expect(response).to redirect_to(car_path(Car.last))
        end
    end

    describe 'PATCH#update' do
            
        before do
            sign_in user
            patch :update, params: { id: car.id, car: { model: 'Ranger', brand: 'Ford', color: 'BLue', year: 2018, value: 1000000.21 } }
        end

        it 'should return status code 302' do
            expect(response.status).to eq(302)
        end

        it 'should redirect to show page' do
            expect(response).to redirect_to(car_path(car))
        end
    end

    describe 'DELETE#destroy' do
                
        before do
            sign_in user
            delete :destroy, params: { id: car.id }
        end

        it 'should return status code 302' do
            expect(response.status).to eq(302)
        end

        it 'should redirect to show page' do
            expect(response).to redirect_to(cars_path)
        end
    end
end 