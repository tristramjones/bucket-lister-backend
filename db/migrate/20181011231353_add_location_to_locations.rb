class AddLocationToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :location, :jsonb
  end
end
