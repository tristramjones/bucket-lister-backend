class CreateJoinTableLocationUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :locations, :users do |t|
      t.index :user_id
      t.index :location_id
    end
  end
end
