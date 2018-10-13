class AddPositionToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :position, :json
  end
end
