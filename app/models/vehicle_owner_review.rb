# frozen_string_literal: true

class VehicleOwnerReview < ApplicationRecord
  has_many :vehicle_owner_review_lists
end
