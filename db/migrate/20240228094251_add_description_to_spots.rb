class AddDescriptionToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :description, :string
  end
end
