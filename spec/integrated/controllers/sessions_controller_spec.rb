require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

    describe 'POST #create' do

        before do   
            User.create(email: 'admin@admin.com', password: 'admin0!@', password_confirmation: 'admin0!@')
        end

        describe 'should login user' do
            before do 
                post :create, params: { email: 'admin@admin.com' } 
            end

            it 'should return status code 302' do
                expect(response).to have_http_status 302
            end
        end
    end
end