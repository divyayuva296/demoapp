class AddDescriptionToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :desctription, :text
  end
end
