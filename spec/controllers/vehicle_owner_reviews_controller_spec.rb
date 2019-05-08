require 'rails_helper'

RSpec.describe VehicleOwnerReviewsController, type: :controller do
  describe "#show" do
    it "has a 200 status code" do
      get :show
      expect(response).to have_http_status(:ok)
    end

    it "responds to json by default" do
      expect(response.content_type).to eq nil
    end
  end
end
