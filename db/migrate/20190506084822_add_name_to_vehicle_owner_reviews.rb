class AddNameToVehicleOwnerReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_owner_reviews, :title, :string
  end
end
