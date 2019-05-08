# frozen_string_literal: true

class VehicleOwnerReviewsController < ApplicationController
  def show
    @vehicle_owner_review = VehicleOwnerReview.first
    render json: @vehicle_owner_review, status: :ok
  end
end
