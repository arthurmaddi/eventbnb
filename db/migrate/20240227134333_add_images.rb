class AddImages < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :images, :string
  end
end
