class DropLocationsUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :locations_users
  end
end
