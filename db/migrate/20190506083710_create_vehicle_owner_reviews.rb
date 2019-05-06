class CreateVehicleOwnerReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_owner_reviews do |t|

      t.timestamps
    end
  end
end
