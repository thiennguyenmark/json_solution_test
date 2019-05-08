require 'swagger_helper'

describe 'Vehicle Owner Review Show Items' do
  path '/vehicle_owner_review' do
    get 'Vehicle Owner Review List' do
      tags 'VehicleOwnerReview'
      produces 'application/json', 'application/xml'

      response '200', 'name found' do
        schema type: :object,
          properties: {
            title: { type: :string },
            content: { type: :string },
            vehicle_owner_review_lists: {
              type: :object
            }
          }
        run_test!
      end
    end
  end
end
