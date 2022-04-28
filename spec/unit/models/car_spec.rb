require 'rails_helper'

RSpec.describe Car, type: :model do

    describe "validations" do

        describe 'title' do
            it { is_expected.to validate_presence_of(:model) }
        end

        describe 'brand' do
            it { is_expected.to validate_presence_of(:brand) }
        end

        describe 'color' do
            it { is_expected.to validate_presence_of(:color) }
        end

        describe 'year' do
            it { is_expected.to validate_presence_of(:year) }
        end

        describe 'value' do
            it { is_expected.to validate_presence_of(:value) }
        end
    end
end