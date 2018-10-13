class RemoveTitleAndDescriptionFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :title
    remove_column :trips, :description
  end
end
