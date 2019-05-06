class VehicleOwnerReviewsController < ApplicationController
  def show
    @vehicle_owner_review = VehicleOwnerReview.first
    render json: @vehicle_owner_review
  end
end
