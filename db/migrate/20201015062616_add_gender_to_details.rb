class AddGenderToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :gender, :string
  end
end
