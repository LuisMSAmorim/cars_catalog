require 'rails_helper'

RSpec.describe HomeController, type: :controller do 

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
end