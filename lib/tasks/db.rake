namespace :db do
  task create_sample_data: :environment do
    # Tao list review cho chu xe
    VehicleOwnerReview.create(title: 'Đánh giá chủ hàng')
    vehicle_owner_review = VehicleOwnerReview.first
    VehicleOwnerReviewList.create(content_review: 'Gia hàng đúng hẹn', vehicle_owner_review: vehicle_owner_review)
    VehicleOwnerReviewList.create(content_review: 'Thái độ của chủ hàng', vehicle_owner_review: vehicle_owner_review)
    VehicleOwnerReviewList.create(content_review: 'Thanh toán đúng hẹn', vehicle_owner_review: vehicle_owner_review)
  end
end
