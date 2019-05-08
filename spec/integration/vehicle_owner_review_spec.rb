require 'swagger_helper'

describe 'Vehicle Owner Review Show Items' do
  path '/vehicle_owner_reviews' do
    get 'Vehicle Owner Review List' do
      tags 'VehicleOwnerReview'
      produces 'application/json'

      response '200', 'response successfully' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            title: { type: :string },
            content: { type: :string },
            vehicle_owner_review_lists: {
              type: :array,
              items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   content_review: { type: :string }
                 }
              }
            }
          }
        run_test!
      end
    end
  end
end
