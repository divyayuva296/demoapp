class AddNumberFieldToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :number, :number
  end
end
