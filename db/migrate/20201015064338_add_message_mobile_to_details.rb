class AddMessageMobileToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :message, :text
    add_column :details, :mobile, :integer , limit: 10
  end
end
