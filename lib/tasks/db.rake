namespace :db do
  task create_sample_data: :environment do

    # Create sample database for Chu xe
    VehicleOwnerReview.create(title: 'Đánh giá chủ hàng')
    VehicleOwnerReviewList.create(content_review: 'Gia hàng đúng hẹn')
    VehicleOwnerReviewList.create(content_review: 'Thái độ của chủ hàng')
    VehicleOwnerReviewList.create(content_review: 'Thanh toán đúng hẹn và đầy đủ')
  end
end
