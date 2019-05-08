require 'rails_helper'

RSpec.describe VehicleOwnerReviewsController, type: :controller do
  describe '#show' do
    before :each do
      get :show
    end
    context 'response successfully' do
      it 'has a 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'responds to json by default' do
        expect(response.content_type).to eq 'application/json'
      end
    end
  end
end
