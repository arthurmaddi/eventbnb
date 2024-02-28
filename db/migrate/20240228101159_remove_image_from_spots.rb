class RemoveImageFromSpots < ActiveRecord::Migration[7.1]
  def change
    remove_column :spots, :images, :string
  end
end
