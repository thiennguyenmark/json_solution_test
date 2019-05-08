# frozen_string_literal: true

class VehicleOwnerReviewListSerializer < ActiveModel::Serializer
  attributes :id, :content_review

  belongs_to :vehicle_owner_review
end
