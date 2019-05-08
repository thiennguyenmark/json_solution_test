require 'swagger_helper'

describe 'Vehicle Owner Review Show Items' do
  path '/vehicle_owner_review' do

    get 'Vehicle Owner Review List' do
      tags 'VehicleOwnerReview'
      consumes 'application/json', 'application/xml'
      parameter name: :response, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string },
          type: :array,
          vehicle_owner_review_lists: {
            type: :object
          }
        },
        required: [ 'title', 'content' ]
      }

      response '200', 'Responsed Successfully' do
        let(:blog) { { title: 'foo', content: 'bar' } }
        run_test!
      end
    end
  end
end
