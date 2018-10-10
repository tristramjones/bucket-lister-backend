class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.references :user
      t.references :location

      t.timestamps
    end
  end
end
