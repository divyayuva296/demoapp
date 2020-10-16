class AddRangeToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :range, :range
  end
end
