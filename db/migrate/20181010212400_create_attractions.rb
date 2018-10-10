class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :title
      t.string :description
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
