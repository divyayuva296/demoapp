class AddCityIdToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :city_id, :string
  end
end
