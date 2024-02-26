class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
