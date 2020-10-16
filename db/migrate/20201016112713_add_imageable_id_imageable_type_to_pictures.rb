class AddImageableIdImageableTypeToPictures < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :imageable_id, :integer
    add_column :pictures, :imageable_type, :string
  end
end
