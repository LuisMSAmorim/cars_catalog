require 'rails_helper'

RSpec.describe Devise::SessionsController, type: :controller do

    before do
        request.env['devise.mapping'] = Devise.mappings[:user]
    end

    describe 'GET #new' do

        before do
            get :new
        end

        it 'returns http success' do
            expect(response.status).to eq(200)
        end
    end
end