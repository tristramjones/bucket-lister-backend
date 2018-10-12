class ChangeLocationInLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :location, :json
  end
end
