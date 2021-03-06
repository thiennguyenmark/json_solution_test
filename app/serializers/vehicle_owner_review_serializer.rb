# frozen_string_literal: true

class VehicleOwnerReviewSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :vehicle_owner_review_lists
end
