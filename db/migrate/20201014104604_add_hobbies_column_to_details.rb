class AddHobbiesColumnToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :hobbies, :string
  end
end
