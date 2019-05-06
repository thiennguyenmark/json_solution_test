Rails.application.routes.draw do
  unless Rails.env.production?
    mount Rswag::Api::Engine => '/api-docs'
    mount Rswag::Ui::Engine => '/api-docs'
  end

  resource :vehicle_owner_reviews, only: [:show]
end
