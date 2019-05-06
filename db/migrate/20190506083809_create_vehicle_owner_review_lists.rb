class CreateVehicleOwnerReviewLists < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_owner_review_lists do |t|
      t.string :content_review
      t.references :vehicle_owner_review

      t.timestamps
    end
  end
end
