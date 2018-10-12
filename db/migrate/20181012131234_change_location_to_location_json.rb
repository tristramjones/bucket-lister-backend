class ChangeLocationToLocationJson < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :location, :location_json
  end
end
