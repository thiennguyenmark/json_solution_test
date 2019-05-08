require 'swagger_helper'

describe 'Vehicle Owner Review Show Items' do
  path '/vehicle_owner_reviews' do
    get 'Vehicle Owner Review List' do
      tags 'VehicleOwnerReview'
      produces 'application/json'

      response '200', 'response successfully' do
        schema type: :object,
          properties: {
            id: {
              type: :integer,
              example: 1
            },
            title: {
              type: :string,
              example: 'Đánh giả chủ xe'
            },
            vehicle_owner_review_lists: {
              type: :array,
              items: {
                type: :object,
                properties: {
                  id: {
                    type: :integer,
                    example: 1
                  },
                  content_review: {
                    type: :string,
                    example: 'Thái độ chủ hàng'
                  }
                }
              }
            }
          }
        run_test!
      end
    end
  end
end
